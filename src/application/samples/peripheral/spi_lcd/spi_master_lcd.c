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
#include <stdio.h>

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

static void *spi_master_task(const char *arg)
{
    unused(arg);

    /* SPI pinmux */
    app_spi_init_pin();

    /* SPI master init config */
    app_spi_master_init_config();

    /* Initialize ST7789 LCD */
    st7789_init();

    typedef struct {
        uint16_t year;
        uint8_t month;
        uint8_t day;
        uint8_t weekday; // 1-7 (1=Mon, 7=Sun)
        uint8_t hour;
        uint8_t min;
        uint8_t sec;
    } sw_rtc_t;

    sw_rtc_t current_time = {
        .year = 2026,
        .month = 6,
        .day = 6,
        .weekday = 6, // Saturday
        .hour = 13,
        .min = 59,
        .sec = 57
    };

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
    
    int tick_counter = 0;
    emoji_type_t current_emoji = EMOJI_SMILE;

    while(1)
    {
        tick_counter++;
        if (tick_counter > 10) {
            tick_counter = 1;
        }

        if (tick_counter <= 5) {
            /* STATE: Time Display */
            if (tick_counter == 1) {
                st7789_fill_color(COLOR_BLACK);
                /* Force full redraw of time */
                prev_time.day = 0;
                prev_time.hour = 255;
                prev_time.min = 255;
                prev_time.sec = 255;
            }

            /* Date update (only when day changes) */
            if (current_time.day != prev_time.day) {
                snprintf(temp_str, sizeof(temp_str), "%d年%d月%d号，星期%s", 
                         current_time.year, current_time.month, current_time.day, weekdays[current_time.weekday]);
                st7789_draw_chinese_string(0, 60, temp_str, COLOR_WHITE, COLOR_BLACK);
                prev_time.day = current_time.day;
                prev_time.year = current_time.year;
                prev_time.month = current_time.month;
                prev_time.weekday = current_time.weekday;
            }

            /* Hour update (only when hour changes) */
            if (current_time.hour != prev_time.hour) {
                snprintf(temp_str, sizeof(temp_str), "%02d:", current_time.hour);
                st7789_draw_chinese_string(48, 140, temp_str, COLOR_WHITE, COLOR_BLACK);
                prev_time.hour = current_time.hour;
            }

            /* Minute update (only when min changes) */
            if (current_time.min != prev_time.min) {
                snprintf(temp_str, sizeof(temp_str), "%02d:", current_time.min);
                st7789_draw_chinese_string(96, 140, temp_str, COLOR_WHITE, COLOR_BLACK);
                prev_time.min = current_time.min;
            }

            /* Second update (always updates every second) */
            if (current_time.sec != prev_time.sec) {
                snprintf(temp_str, sizeof(temp_str), "%02d", current_time.sec);
                st7789_draw_chinese_string(144, 140, temp_str, COLOR_WHITE, COLOR_BLACK);
                prev_time.sec = current_time.sec;
            }
        } 
        else if (tick_counter <= 10) {
            /* STATE: Emoji Display */
            if (tick_counter == 6) {
                st7789_show_emoji(current_emoji);
                
                /* Prepare next emoji for the next 10-second cycle */
                current_emoji++;
                if (current_emoji > EMOJI_MUSIC) {
                    current_emoji = EMOJI_SMILE;
                }
            }
            /* Do nothing for the remaining 4 seconds to just show the emoji */
        }

        osal_msleep(1000);

        /* Update time */
        current_time.sec++;
        if (current_time.sec >= 60) {
            current_time.sec = 0;
            current_time.min++;
            if (current_time.min >= 60) {
                current_time.min = 0;
                current_time.hour++;
                if (current_time.hour >= 24) {
                    current_time.hour = 0;
                    /* For a complete clock, we would calculate days per month here.
                       In this simple demo, we just cycle the weekday 1-7 to show the date refresh. */
                    current_time.weekday = (current_time.weekday % 7) + 1;
                    current_time.day++;
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
