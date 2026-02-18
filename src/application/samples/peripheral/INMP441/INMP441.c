/**
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2024-2024. All rights reserved.
 *
 * 描述: INMP441麦克风和MAX98357A功放模块驱动示例（HH-D02 ws63芯片）\n
 * 功能: 最终修复版 - Buffer 2048 (Words) \n
 * 修正: 恢复2048大小 (8192字节)。之前的DMA Hang是因为传递了Bytes值但被底层按Words处理导致溢出。\n
 */

#pragma GCC diagnostic ignored "-Wunused-function"
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wreturn-type"
#pragma GCC diagnostic ignored "-Wunused-variable"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#pragma GCC diagnostic ignored "-Waggressive-loop-optimizations"

#include "i2s.h"
#include "watchdog.h"
#include "hal_sio.h"
#if defined(CONFIG_I2S_SUPPORT_DMA)
#include "hal_dma.h"
#endif
#include "soc_osal.h"
#include "app_init.h"
#include "common_def.h"
#include "osal_debug.h"
#include "pinctrl.h"
#include "securec.h"
#include <string.h>
#include "audiowebsocket.h"
#include "wlan_hotspot.h"
#include "lwip/sys.h" // For sys_msleep

// I2S配置参数
#define I2S_DIV_NUMBER 16    // 16kHz
#define I2S_CHANNEL_NUMBER 2 // 双声道
#define I2S_TX_INT_THRESHOLD 4
#define I2S_RX_INT_THRESHOLD 4
#define I2S_DMA_SRC_WIDTH 2 // 4字节 (32-bit Packed Stereo)
#define I2S_DMA_DEST_WIDTH 2
#define I2S_DMA_BURST_LENGTH 1

// 音频处理参数
// Sample Count: 2048 Frames (Stereo Packed) -> 8192 Bytes
// Duration: 2048 / 16000 = 128ms
#define FRAME_COUNT 2048
#define BUFFER_CNT 2

// 音量控制参数 (0-100)
// 0: 静音, 50: 正常音量(3.0x), 100: 最大音量(6.0x)
#define VOLUME_LEVEL 50

// 任务配置
#define I2S_TASK_PRIO 24
#define I2S_TASK_STACK_SIZE 0x2000

// I2S模式定义
#define MASTER 1
#define SLAVE 0
#define STD_MODE 0
#define SIXTEEN_BIT 1
#define TWO_CH 0
#define NONE_TIMING_MODE 0
#define RISING_EDGE 1

// 全局变量: 使用uint32_t存储打包的立体声帧 (L+R)
static uint32_t g_rx_buffer[BUFFER_CNT][FRAME_COUNT] = {0};
static uint32_t g_tx_buffer[BUFFER_CNT][FRAME_COUNT] = {0};
static volatile bool g_is_recording = false;
static uint32_t g_frame_count = 0;

// Ring Buffer for Audio Playback (RX from WebSocket)
#define RB_SIZE (FRAME_COUNT * 16) // 16 Buffers Depth (~2 seconds)
static uint32_t g_net_audio_rb[RB_SIZE];
static volatile uint32_t g_rb_head = 0;
static volatile uint32_t g_rb_tail = 0;

static void rb_push(const uint32_t *data, uint32_t count)
{
    for (uint32_t i = 0; i < count; i++) {
        uint32_t next = (g_rb_head + 1) % RB_SIZE;
        // Wait if full (Blocking Flow Control)
        while (next == g_rb_tail) {
            sys_msleep(5); // Yield to I2S task to consume data
            next = (g_rb_head + 1) % RB_SIZE;
        }
        g_net_audio_rb[g_rb_head] = data[i];
        g_rb_head = next;
    }
}

static bool rb_pop(uint32_t *out_val)
{
    if (g_rb_head == g_rb_tail) {
        return false; // Empty
    }
    *out_val = g_net_audio_rb[g_rb_tail];
    g_rb_tail = (g_rb_tail + 1) % RB_SIZE;
    return true;
}

static uint32_t rb_count(void)
{
    if (g_rb_head >= g_rb_tail)
        return g_rb_head - g_rb_tail;
    return RB_SIZE - (g_rb_tail - g_rb_head);
}

// WebSocket RX Callback
static void on_ws_audio_received(const uint8_t *data, size_t len)
{
    // 16-bit Mono (Received) -> 32-bit Stereo (Playback)
    // Input: [Sample 0 (16b)] [Sample 1 (16b)] ...
    // Output: [Right0(16b)|Left0(16b)] [Right1(16b)|Left1(16b)] ...
    // Note: I2S Config is 16-bit Data Width, 2 Channels.
    // In DMA memory, this is expected as 32-bit words where high 16 is Ch1(Right) and low 16 is Ch0(Left).

    // Print received data info
    if (len >= 4) {
        osal_printk("[WS RX] Len: %d, Data: %02x %02x %02x %02x ...\r\n", len, data[0], data[1], data[2], data[3]);
    } else {
        osal_printk("[WS RX] Len: %d\r\n", len);
    }

    // Safety: Align to 2 bytes (1 int16 sample)
    if (len % 2 != 0) {
        len -= (len % 2);
    }

// Process in chunks to avoid large stack usage
#define CONVERT_CHUNK_SIZE 32
    uint32_t temp_buf[CONVERT_CHUNK_SIZE * 2]; // *2 for 2x Upsampling

    const int16_t *input_samples = (const int16_t *)data;
    size_t sample_count = len / 2; // Number of Mono 16-bit samples

    size_t processed = 0;
    while (processed < sample_count) {
        size_t chunk =
            (sample_count - processed > CONVERT_CHUNK_SIZE) ? CONVERT_CHUNK_SIZE : (sample_count - processed);

        for (size_t i = 0; i < chunk; i++) {
            int16_t sample = input_samples[processed + i];

            // Convert Mono to Stereo (Duplicate sample to L and R)
            // Layout: [High: Right | Low: Left]
            uint32_t val = ((uint32_t)(uint16_t)sample << 16) | (uint16_t)sample;

            // 2x Upsampling (Repeat Frame) to fix "Fast" playback (8kHz Source -> 16kHz Playback)
            temp_buf[2 * i] = val;
            temp_buf[2 * i + 1] = val;
        }

        rb_push(temp_buf, chunk * 2);
        processed += chunk;
    }
}

// 处理音频数据: 提取左声道，复制到右声道，清除噪音
static void process_audio_buffer(uint32_t *input, uint32_t *output, uint32_t count)
{
    // 音量增益计算: 0-100 映射到 0.0-6.0 倍
    // VOLUME_LEVEL = 0   -> gain = 0.0 (静音)
    // VOLUME_LEVEL = 50  -> gain = 3.0 (正常)
    // VOLUME_LEVEL = 100 -> gain = 6.0 (最大，适合远距离拾音)
    const float volume_gain = (VOLUME_LEVEL / 16.67f);

    static int32_t dc_offset_ema = 0;
    const float alpha_dc = 0.005f;

    // 1. Calc DC (假定Left在低16位)
    int64_t frame_sum = 0;
    for (uint32_t i = 0; i < count; i++) {
        int16_t val = (int16_t)(input[i] & 0xFFFF);
        frame_sum += val;
    }
    int32_t frame_dc = (int32_t)(frame_sum / count);
    dc_offset_ema = (int32_t)(alpha_dc * frame_dc + (1.0f - alpha_dc) * dc_offset_ema);

    // 2. Filter & Copy
    for (uint32_t i = 0; i < count; i++) {
        int16_t raw_val = (int16_t)(input[i] & 0xFFFF);
        int32_t sample = raw_val - dc_offset_ema;

        sample = (int32_t)(sample * volume_gain);

        if (sample > 32767)
            sample = 32767;
        else if (sample < -32768)
            sample = -32768;

        int16_t clean_sample = (int16_t)sample;

        // Pack: Left = clean, Right = clean (Mono 2 Stereo)
        // Format: [High16: Right | Low16: Left]
        output[i] = ((uint32_t)clean_sample << 16) | (uint16_t)clean_sample;
    }
}

static void app_i2s_init(void)
{
    uapi_i2s_deinit(SIO_BUS_0);

    // 显式引脚复用 (根据用户硬件列表)
    // S0_I2S_DO -> GPIO9
    uapi_pin_set_mode(S_MGPIO9, PIN_MODE_4);
    // S0_I2S_SCLK -> GPIO10
    uapi_pin_set_mode(S_MGPIO10, PIN_MODE_4);
    // S0_I2S_WS -> GPIO11
    uapi_pin_set_mode(S_MGPIO11, PIN_MODE_4);
    // S0_I2S_DI -> GPIO12
    uapi_pin_set_mode(S_MGPIO12, PIN_MODE_4);

    uapi_pin_set_pull(S_MGPIO11, PIN_PULL_TYPE_DISABLE);
    uapi_pin_set_pull(S_MGPIO12, PIN_PULL_TYPE_DISABLE);

    uapi_i2s_init(SIO_BUS_0, NULL);

    i2s_config_t config = {.drive_mode = MASTER,
                           .transfer_mode = STD_MODE,
                           .data_width = SIXTEEN_BIT,
                           .channels_num = TWO_CH,
                           .timing = NONE_TIMING_MODE,
                           .clk_edge = RISING_EDGE,
                           .div_number = I2S_DIV_NUMBER,
                           .number_of_channels = I2S_CHANNEL_NUMBER};
    uapi_i2s_set_config(SIO_BUS_0, &config);

#if defined(CONFIG_I2S_SUPPORT_DMA)
    i2s_dma_attr_t dma_attr = {
        .tx_dma_enable = true,
        .tx_int_threshold = I2S_TX_INT_THRESHOLD,
        .rx_dma_enable = true,
        .rx_int_threshold = I2S_RX_INT_THRESHOLD,
    };
    uapi_i2s_dma_config(SIO_BUS_0, &dma_attr);
#endif

    osal_printk("I2S Init: 2048 Frames (Words), Pins Confirmed.\r\n");
}

static void *i2s_audio_task(const char *arg)
{
    unused(arg);
    osal_printk("I2S Audio Task Start\r\n");

#if defined(CONFIG_I2S_SUPPORT_DMA)
    uapi_dma_deinit();
    uapi_dma_init();
    uapi_dma_open();

    i2s_dma_config_t dma_cfg = {
        .src_width = 2, // 4 bytes
        .dest_width = 2,
        .burst_length = 1,
        .priority = 0,
    };
#else
    return NULL;
#endif

    // Connect to WiFi hotspot first
    osal_printk("Connecting to WiFi hotspot...\r\n");
    if (wifi_connect_to_hotspot() != 0) {
        osal_printk("WiFi connection failed! Audio streaming will not work.\r\n");
        return NULL;
    }
    osal_printk("WiFi connected successfully!\r\n");

    app_i2s_init();

    memset_s(g_rx_buffer, sizeof(g_rx_buffer), 0, sizeof(g_rx_buffer));
    memset_s(g_tx_buffer, sizeof(g_tx_buffer), 0, sizeof(g_tx_buffer));

    // Initialize WebSocket connection
    if (audio_websocket_init() == 0) {
        osal_printk("WebSocket initialized successfully\r\n");
        audio_websocket_set_rx_callback(on_ws_audio_received);
    } else {
        osal_printk("WebSocket initialization failed\r\n");
    }

    g_is_recording = true;
    uint32_t buf_idx = 0;
    g_frame_count = 0;

    osal_printk("Loop Active (Words=2048).\r\n");

    while (g_is_recording) {
        // 1. TX Async
        uapi_i2s_merge_write_by_dma(SIO_BUS_0, g_tx_buffer[buf_idx], FRAME_COUNT, &dma_cfg, (uintptr_t)NULL, false);

        // 2. RX Blocking
        // 注意: 传递FRAME_COUNT(2048)作为长度(Words)，因为之前2048工作过。
        int32_t ret =
            uapi_i2s_merge_read_by_dma(SIO_BUS_0, g_rx_buffer[buf_idx], FRAME_COUNT, &dma_cfg, (uintptr_t)NULL, true);

        if (ret != 0 && g_frame_count % 100 == 0)
            osal_printk("[ERR] Read Ret: 0x%x\r\n", ret);

        // 3. Process
        uint32_t next_idx = buf_idx ^ 1;

        // A. Capture Path: Mic -> Buffer -> Process -> WebSocket
        process_audio_buffer(g_rx_buffer[buf_idx], g_tx_buffer[next_idx], FRAME_COUNT);

        // B. Playback Path: RingBuffer -> Speaker
        // We overwrite g_tx_buffer with network data for playback
        // Note: g_tx_buffer[next_idx] currently holds processed mic data suited for Loopback.
        // If we want Mic->Network AND Network->Speaker, we must send Mic data FIRST, then overwrite for Speaker.

        // C. Send Mic Data (Captured in Step A)
        int ws_ret = audio_websocket_send((const uint8_t *)g_tx_buffer[next_idx], FRAME_COUNT * sizeof(uint32_t));

        // D. Prepare Playback Data from Network RingBuffer
        // If we have enough data, fill TX buffer. Else silence.
        uint32_t available = rb_count();
        if (available >= FRAME_COUNT) {
            for (int i = 0; i < FRAME_COUNT; i++) {
                rb_pop(&g_tx_buffer[next_idx][i]);
            }
        } else {
            // Not enough data (Underrun) -> Silence
            // Or maybe comfort noise? For now silence.
            memset_s(g_tx_buffer[next_idx], FRAME_COUNT * sizeof(uint32_t), 0, FRAME_COUNT * sizeof(uint32_t));
        }

        if (ws_ret < 0) {
            if (g_frame_count % 100 == 0)
                osal_printk("[WARN] WebSocket send failed\r\n");

            // Reconnect logic
            // Check if socket is closed (which happens on RX error now)
            // But we don't have direct access to ws_socket variable here.
            // We rely on audio_websocket_send returning -1.

            // Try to re-init if it seems persistent?
            // Simple approach: periodic retry.
            // But audio_websocket_init() spawns a thread. We must ensure old thread is gone.
            // With previous change, RX thread exits and closes socket.

            // Let's try to re-init every 2 seconds if failed.
            // But blocking here will disrupt audio loopback?
            // Loopback (Mic->Speaker) should continue. Reconnect should be async or quick.
            // audio_websocket_init IS blocking (connect + handshake).
            // NOTE: Doing blocking connect inside audio loop will cause audio glitches/stutter.
            // Ideally we need an alerting mechanism or run connect in separate task.
            // For now, allow glitch during reconnection.

            static uint32_t last_reconnect_frame = 0;
            if (g_frame_count - last_reconnect_frame > 25) { // ~3 seconds (25 * 128ms = 3.2s)
                                                             // FRAME_COUNT=2048. Rate=16000. 1 frame = 128ms.
                                                             // g_frame_count increments by 1 per loop.
                                                             // So 1 loop = 128ms.
                                                             // Wait 20 loops ~ 2.5 seconds.
                osal_printk("[WS] Attempting Reconnect...\r\n");
                if (audio_websocket_init() == 0) {
                    osal_printk("[WS] Reconnect Successful\r\n");
                    audio_websocket_set_rx_callback(on_ws_audio_received);
                }
                last_reconnect_frame = g_frame_count;
            }
        }

        // 5. Update
        buf_idx = next_idx;
        g_frame_count++;

        if (g_frame_count % 20 == 0) {
            uint32_t rx_val = g_rx_buffer[buf_idx ^ 1][0];
            uint32_t tx_val = g_tx_buffer[buf_idx][0];
            osal_printk("[#%d] RX[0]=0x%x TX[0]=0x%x\r\n", g_frame_count, rx_val, tx_val);
        }

        if (ws_ret > 0 && g_frame_count % 100 == 0) {
            osal_printk("[WS] Uploaded %d bytes (Frame #%d)\r\n", ws_ret, g_frame_count);
        }

        uapi_watchdog_kick();
    }

    // Close WebSocket connection
    audio_websocket_close();
    osal_printk("WebSocket closed\r\n");

    return NULL;
}

static void i2s_entry(void)
{
    osal_task *task_handle = NULL;
    osal_kthread_lock();
    task_handle = osal_kthread_create((osal_kthread_handler)i2s_audio_task, 0, "I2sAudioTask", I2S_TASK_STACK_SIZE);
    if (task_handle != NULL) {
        osal_kthread_set_priority(task_handle, I2S_TASK_PRIO);
    }
    osal_kthread_unlock();
}

app_run(i2s_entry);