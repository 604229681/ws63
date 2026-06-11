/**
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2023-2023. All rights reserved.
 *
 * Description: SPI Sample Source. \n
 *
 * History: \n
 * 2023-06-25, Create file. \n
 */
#include "pinctrl.h"
#include "spi.h"
#include "gpio.h"
#include "soc_osal.h"
#include "app_init.h"
#include "st7789.h"
#include "prompt_image.h"
#include <stdio.h>
#include <string.h>

#define SPI_SLAVE_NUM                   1
#define SPI_FREQUENCY                   24
#define SPI_CLK_POLARITY                0
#define SPI_CLK_PHASE                   0
#define SPI_FRAME_FORMAT                0
#define SPI_FRAME_FORMAT_STANDARD       0
#define SPI_FRAME_SIZE_8                0x1f
#define SPI_TMOD                        0
#define SPI_WAIT_CYCLES                 0x10

#ifdef CONFIG_SPI_MASTER_BUS_ID
#undef CONFIG_SPI_MASTER_BUS_ID
#endif
#define CONFIG_SPI_MASTER_BUS_ID            1
#define SPI_TASK_STACK_SIZE             0x2000
#define SPI_TASK_PRIO                   28

static void app_spi_init_pin(void)
{
    if (CONFIG_SPI_MASTER_BUS_ID == 1) {
        /* SPI data and clock pins */
        uapi_pin_set_mode(CONFIG_SPI_DI_MASTER_PIN, PIN_MODE_3);
        uapi_pin_set_mode(CONFIG_SPI_DO_MASTER_PIN, PIN_MODE_3);
        uapi_pin_set_mode(CONFIG_SPI_CLK_MASTER_PIN, PIN_MODE_3);
        /* Enhance clock drive strength for signal integrity */
        uapi_pin_set_ds(CONFIG_SPI_CLK_MASTER_PIN, PIN_DS_7);
        /* CS pin: set to GPIO mode for manual control */
        uapi_pin_set_mode(CONFIG_SPI_CS_MASTER_PIN, PIN_MODE_0);
        uapi_gpio_set_dir(CONFIG_SPI_CS_MASTER_PIN, GPIO_DIRECTION_OUTPUT);
        uapi_gpio_set_val(CONFIG_SPI_CS_MASTER_PIN, GPIO_LEVEL_HIGH);
    }
}

static void app_spi_master_init_config(void)
{
    spi_attr_t config = { 0 };
    spi_extra_attr_t ext_config = { 0 };

    config.is_slave = false;
    config.slave_num = SPI_SLAVE_NUM;
    config.bus_clk = 32000000;
    config.freq_mhz = SPI_FREQUENCY;
    config.clk_polarity = SPI_CLK_POLARITY;
    config.clk_phase = SPI_CLK_PHASE;
    config.frame_format = SPI_FRAME_FORMAT;
    config.spi_frame_format = HAL_SPI_FRAME_FORMAT_STANDARD;
    config.frame_size = HAL_SPI_FRAME_SIZE_8;
    config.tmod = HAL_SPI_TRANS_MODE_TX;
    config.sste = 0;

    ext_config.qspi_param.wait_cycles = SPI_WAIT_CYCLES;
    uapi_spi_init(CONFIG_SPI_MASTER_BUS_ID, &config, &ext_config);
}

typedef struct {
    uint16_t year;
    uint8_t month;
    uint8_t day;
    uint8_t weekday; // 1-7 (1=Mon, 7=Sun)
    uint8_t hour;
    uint8_t min;
    uint8_t sec;
} sw_rtc_t;

volatile sw_rtc_t g_current_time = {
    .year = 2026,
    .month = 6,
    .day = 6,
    .weekday = 6, // Saturday
    .hour = 13,
    .min = 59,
    .sec = 57
};
volatile int g_time_updated = 0;

volatile int g_current_emotion = -1; // -1: Time, 0: IDLE, 1: CHAT, 2: STORY, 3: MUSIC
volatile int g_emotion_updated = 0;

static void draw_string_scaled_fast(uint16_t x, uint16_t y, const char *str, const LCD_FontDef *font, uint16_t fg, uint16_t bg, uint8_t scale)
{
    uint16_t cur_x = x;
    
    // Allocate buffer for ONE scaled character
    uint32_t scaled_w = font->width * scale;
    uint32_t scaled_h = font->height * scale;
    uint32_t buf_size = scaled_w * scaled_h * sizeof(uint16_t);
    uint16_t *char_buf = (uint16_t *)osal_kmalloc(buf_size, 0); // using osal_kmalloc since it's LiteOS
    
    if (!char_buf) {
        return;
    }

    while (*str) {
        char ch = *str;
        if (ch >= ' ' && ch <= '~') {
            uint32_t offset = (ch - ' ') * font->height * ((font->width + 7) / 8);
            uint16_t bytes_per_row = (font->width + 7) / 8;
            
            // Render the character into char_buf
            for (uint8_t row = 0; row < font->height; row++) {
                for (uint8_t col = 0; col < font->width; col++) {
                    uint32_t byte_idx = offset + row * bytes_per_row + col / 8;
                    uint8_t bit_idx = 7 - (col % 8);
                    uint16_t color = (font->data[byte_idx] & (1 << bit_idx)) ? fg : bg;
                    
                    // Fill scale x scale block in char_buf
                    for (uint8_t dy = 0; dy < scale; dy++) {
                        for (uint8_t dx = 0; dx < scale; dx++) {
                            uint32_t buf_y = row * scale + dy;
                            uint32_t buf_x = col * scale + dx;
                            char_buf[buf_y * scaled_w + buf_x] = color;
                        }
                    }
                }
            }
            
            // Draw the entire character buffer to the screen at once
            st7789_draw_image(cur_x, y, scaled_w, scaled_h, char_buf);
        }
        cur_x += scaled_w;
        str++;
    }
    
    osal_kfree(char_buf);
}

static void *spi_master_task(const char *arg)
{
    unused(arg);

    /* SPI pinmux */
    app_spi_init_pin();

    /* SPI master init config */
    app_spi_master_init_config();

    /* Initialize ST7789 LCD */
    st7789_init();

    sw_rtc_t prev_time = {
        .year = 0,
        .month = 0,
        .day = 0,
        .weekday = 0,
        .hour = 255,
        .min = 255,
        .sec = 255
    };

    const char *weekdays[] = {"", "一", "二", "三", "四", "五", "六", "日"};
    char temp_str[64];

    /* Clear the entire 240x240 screen to black first */
    st7789_fill_color(COLOR_BLACK);
    
    int current_display_state = -1; // -1: time, >=0: emotion
    int prev_display_state = -2;

    while(1)
    {
        // 1. Process time update
        if (g_time_updated) {
            // Ensure local time values are within valid range (simple check)
            if (g_current_time.sec >= 60) g_current_time.sec = 0;
            if (g_current_time.min >= 60) g_current_time.min = 0;
            if (g_current_time.hour >= 24) g_current_time.hour = 0;
            g_time_updated = 0;
        }

        // 2. Decide display state
        if (g_emotion_updated) {
            current_display_state = g_current_emotion;
            g_emotion_updated = 0;
        }

        // 3. Display logic
        if (current_display_state != prev_display_state) {
            st7789_fill_color(COLOR_BLACK); // clear screen on transition
            
            if (current_display_state == -1 || current_display_state == 0) {
                // Time Mode setup
                prev_time.day = 0;
                prev_time.hour = 255;
                prev_time.min = 255;
                prev_time.sec = 255;
            } else {
                // Show corresponding emoji based on emotion
                emoji_type_t emoji = EMOJI_SMILE;
                if (current_display_state == 1) { // CHAT -> SMILE
                    emoji = EMOJI_SMILE;
                } else if (current_display_state == 2) { // STORY
                    emoji = EMOJI_STORY;
                } else if (current_display_state == 3) { // MUSIC
                    emoji = EMOJI_MUSIC;
                }
                st7789_show_emoji(emoji);
            }
            prev_display_state = current_display_state;
        }

        if (current_display_state == -1 || current_display_state == 0) {
            /* Date and Prompt update (only when day/display state changes) */
            if (g_current_time.day != prev_time.day) {
                // To ensure it strictly fits on one line (<= 240px), we use YYYY-MM-DD format
                // Worst case: 2026-12-31 星期三
                // 11 ASCII (11*12=132px) + 3 Chinese (3*24=72px) = 204px.
                snprintf(temp_str, sizeof(temp_str), "%d-%02d-%02d 星期%s", 
                         g_current_time.year, g_current_time.month, g_current_time.day, weekdays[g_current_time.weekday]);
                
                // Calculate actual width to center it
                char temp_ascii[32];
                snprintf(temp_ascii, sizeof(temp_ascii), "%d-%02d-%02d ", g_current_time.year, g_current_time.month, g_current_time.day);
                int ascii_chars = strlen(temp_ascii);
                int total_width = (ascii_chars * 12) + (3 * 24); 
                
                int date_x = (ST7789_WIDTH - total_width) / 2;
                if (date_x < 0) date_x = 0;
                st7789_draw_chinese_string(date_x, 120, temp_str, COLOR_WHITE, COLOR_BLACK);
                
                // Prompt directly under the date
                int prompt_x = (ST7789_WIDTH - prompt_width) / 2;
                st7789_draw_1bpp_image(prompt_x, 170, prompt_width, prompt_height, prompt_image_data, COLOR_CYAN, COLOR_BLACK);

                prev_time.day = g_current_time.day;
                prev_time.year = g_current_time.year;
                prev_time.month = g_current_time.month;
                prev_time.weekday = g_current_time.weekday;
            }

            /* Time update (every second) */
            if (g_current_time.sec != prev_time.sec || g_current_time.min != prev_time.min || g_current_time.hour != prev_time.hour) {
                snprintf(temp_str, sizeof(temp_str), "%02d:%02d:%02d", g_current_time.hour, g_current_time.min, g_current_time.sec);
                
                // Use custom scaling to make font huge
                // Font_12x24 at 2x scale = 24x48 per char. 8 chars * 24 = 192px width.
                // It fits well on 240px screen.
                int scale = 2;
                int time_x = (ST7789_WIDTH - (8 * Font_12x24.width * scale)) / 2;
                draw_string_scaled_fast(time_x, 50, temp_str, &Font_12x24, COLOR_YELLOW, COLOR_BLACK, scale);
                
                prev_time.sec = g_current_time.sec;
                prev_time.min = g_current_time.min;
                prev_time.hour = g_current_time.hour;
            }
        }

        osal_msleep(100);

        /* Update time locally to keep it ticking between network syncs */
        static int ms_count = 0;
        ms_count += 100;
        if (ms_count >= 1000) {
            ms_count = 0;
            g_current_time.sec++;
            if (g_current_time.sec >= 60) {
                g_current_time.sec = 0;
                g_current_time.min++;
                if (g_current_time.min >= 60) {
                    g_current_time.min = 0;
                    g_current_time.hour++;
                    if (g_current_time.hour >= 24) {
                        g_current_time.hour = 0;
                        g_current_time.weekday = (g_current_time.weekday % 7) + 1;
                        g_current_time.day++;
                    }
                }
            }
        }
    }
   

    return NULL;
}

static void spi_master_entry(void)
{
    osal_task *task_handle = NULL;
    osal_kthread_lock();
    task_handle = osal_kthread_create((osal_kthread_handler)spi_master_task, 0, "SpiMasterTask", SPI_TASK_STACK_SIZE);
    if (task_handle != NULL) {
        osal_kthread_set_priority(task_handle, SPI_TASK_PRIO);
        osal_kfree(task_handle);
    }
    osal_kthread_unlock();
}

/* Run the spi_master_entry. */
app_run(spi_master_entry);
