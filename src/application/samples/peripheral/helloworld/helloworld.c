/*使用本案例前先把sio_porting.h和sio_porting.c中的FREQ_OF_NEED改成16*/
#include "i2s.h"
#include "watchdog.h"
#include "hal_sio.h"
#include "hal_dma.h"
#include "soc_osal.h"
#include "app_init.h"
#include "converted_audio_data.h"
#include "common_def.h"
#include "osal_debug.h"
#include "cmsis_os2.h"
#include "pinctrl.h" 

#define I2S_DIV_NUMBER              16
#define I2S_CHANNEL_NUMBER          2
#define I2S_TX_INT_THRESHOLD        7
#define I2S_RX_INT_THRESHOLD        1
#define I2S_DMA_SRC_WIDTH           2
#define I2S_DMA_DEST_WIDTH          2
#define I2S_DMA_BURST_LENGTH        0
#define I2S_DMA_TRANS_STEP          2

#define I2S_TASK_PRIO               24
#define I2S_TASK_STACK_SIZE         0xc00

extern const int16_t my_converted_audio[];
#define MY_AUDIO_SAMPLES_LEN 56842
int16_t my_txdata[256]={0};

static void i2s_dma_master_init(void)
{
    uapi_i2s_deinit(SIO_BUS_0);
    uapi_i2s_init(SIO_BUS_0, NULL);
    sio_porting_i2s_pinmux();
    i2s_config_t config = {
        .drive_mode = MASTER,
        .transfer_mode = STD_MODE,
        .data_width = SIXTEEN_BIT,
        .channels_num = TWO_CH,
        .timing = NONE_TIMING_MODE,
        .clk_edge = RISING_EDGE,
        .div_number = I2S_DIV_NUMBER,
        .number_of_channels = I2S_CHANNEL_NUMBER,
    };
    i2s_dma_attr_t attr = {
        .tx_dma_enable = 1,
        .tx_int_threshold = I2S_TX_INT_THRESHOLD,
        .rx_dma_enable = 0,
        .rx_int_threshold = I2S_RX_INT_THRESHOLD,
    };
    uapi_i2s_set_config(SIO_BUS_0, &config);
    uapi_i2s_dma_config(SIO_BUS_0, &attr);
}

static void *i2s_dma_master_task(const char *arg)
{
    unused(arg);
    int32_t ret = 128;
#if defined(CONFIG_SIO_USING_V151)
    ret = ERRCODE_SUCC;
#endif
    osal_printk("ret=%d\r\n", ret);
    uapi_dma_deinit();
    i2s_dma_master_init();

    /* DMA init. */
    uapi_dma_init();
    uapi_dma_open();
    i2s_dma_config_t dma_cfg = {
        .src_width = I2S_DMA_SRC_WIDTH,
        .dest_width = I2S_DMA_DEST_WIDTH,
        .burst_length = I2S_DMA_BURST_LENGTH,
        .priority = 0,
    };
    osal_printk("playing threading start.\r\n");

    int p=0;
    while (1) {
        uapi_watchdog_kick();

        while(1){
            for(int i=0; i<64; i++) {
                for(int j=0; j<4; j++) { 
                    my_txdata[i*4+j] = my_converted_audio[p+i];
                }
            }

            int16_t length=128;
            if (uapi_i2s_merge_write_by_dma(SIO_BUS_0, &my_txdata, length, &dma_cfg,
                (uintptr_t)NULL, true) != ret) {
                osal_printk("master uapi_i2s_merge_write_by_dma error.\r\n");
            }

            p+= 64; // 更新 p 以指向下一个数据块
            if(p> MY_AUDIO_SAMPLES_LEN - 64) {
                osal_printk("master uapi_i2s_merge_write_by_dma end.\r\n");
                p=0; // 重置 p 以循环播放音频数据
                break; // 跳出循环，等待下一次播放
            }
        }
    }
    return NULL;
}

static void i2s_entry(void)
{
    osal_task *task_handle = NULL;
    osal_kthread_lock();
    task_handle = osal_kthread_create((osal_kthread_handler)i2s_dma_master_task, 0, "I2sDmaMasterTask",
                                      I2S_TASK_STACK_SIZE);
    if (task_handle != NULL) {
        osal_kthread_set_priority(task_handle, I2S_TASK_PRIO);
    }
    osal_kthread_unlock();
}

/* Run the i2s_entry. */
app_run(i2s_entry);
