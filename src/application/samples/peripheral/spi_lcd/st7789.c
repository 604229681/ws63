#include "st7789.h"
#include "pinctrl.h"
#include "spi.h"
#include "gpio.h"
#include "soc_osal.h"
#include "app_init.h"
#include "osal_debug.h"
#include "emoji_frames.h"
#include "chinese_font.h"
#include <string.h>

/* ========== Low-level SPI operations ========== */

static void lcd_write_command(uint8_t cmd)
{
    osal_mdelay(1); /* Ensure previous SPI TX is physically complete */
    uapi_gpio_set_val(LCD_DC_PIN, GPIO_LEVEL_LOW);  /* DC=0: command */
    uapi_gpio_set_val(CONFIG_SPI_CS_MASTER_PIN, GPIO_LEVEL_LOW);
    spi_xfer_data_t data = {
        .tx_buff = &cmd,
        .tx_bytes = 1,
    };
    uint32_t ret = uapi_spi_master_write(1, &data, 0xFFFFFFFF);
    if (ret != 0) {
        osal_printk("SPI write cmd 0x%02X failed! ret=0x%08X\n", cmd, ret);
    }
    osal_mdelay(1); /* Wait for FIFO to empty */
    uapi_gpio_set_val(CONFIG_SPI_CS_MASTER_PIN, GPIO_LEVEL_HIGH);
}

static void lcd_write_data_byte(uint8_t val)
{
    osal_mdelay(1); /* Ensure previous SPI TX is physically complete */
    uapi_gpio_set_val(LCD_DC_PIN, GPIO_LEVEL_HIGH);  /* DC=1: data */
    uapi_gpio_set_val(CONFIG_SPI_CS_MASTER_PIN, GPIO_LEVEL_LOW);
    spi_xfer_data_t data = {
        .tx_buff = &val,
        .tx_bytes = 1,
    };
    uint32_t ret = uapi_spi_master_write(1, &data, 0xFFFFFFFF);
    if (ret != 0) {
        osal_printk("SPI write data 0x%02X failed! ret=0x%08X\n", val, ret);
    }
    osal_mdelay(1); /* Wait for FIFO to empty */
    uapi_gpio_set_val(CONFIG_SPI_CS_MASTER_PIN, GPIO_LEVEL_HIGH);
}

static void lcd_write_data_buf(const uint8_t *buf, uint32_t len)
{
    osal_mdelay(1); /* Ensure previous SPI TX is physically complete */
    uapi_gpio_set_val(LCD_DC_PIN, GPIO_LEVEL_HIGH);  /* DC=1: data */
    uapi_gpio_set_val(CONFIG_SPI_CS_MASTER_PIN, GPIO_LEVEL_LOW);
    spi_xfer_data_t data = {
        .tx_buff = (uint8_t *)buf,
        .tx_bytes = len,
    };
    uint32_t ret = uapi_spi_master_write(1, &data, 0xFFFFFFFF);
    if (ret != 0) {
        osal_printk("SPI write buf failed! ret=0x%08X\n", ret);
    }
    
    /* Calculate physical transmission time to prevent CS truncating the data.
     * At 24MHz, 1 byte = 0.33us. 480 bytes = 160us. 
     * To be absolutely safe for any frequency down to 2MHz, we wait longer.
     * 1 byte at 2MHz = 4us. So len bytes = len * 4 us.
     */
    uint32_t wait_ms = (len * 4) / 1000 + 2; 
    osal_mdelay(wait_ms); /* Wait for FIFO to physically empty */
    uapi_gpio_set_val(CONFIG_SPI_CS_MASTER_PIN, GPIO_LEVEL_HIGH);
}

static void lcd_write_command_with_data(uint8_t cmd, const uint8_t *data_buf, uint8_t len)
{
    lcd_write_command(cmd);
    for (uint8_t i = 0; i < len; i++) {
        lcd_write_data_byte(data_buf[i]);
    }
}

/* ========== Hardware reset and backlight ========== */

static void lcd_reset(void)
{
    /* Configure RST and DC pins as GPIO output */
    uapi_pin_set_mode(LCD_RST_PIN, PIN_MODE_0);
    uapi_gpio_set_dir(LCD_RST_PIN, GPIO_DIRECTION_OUTPUT);

    uapi_pin_set_mode(LCD_DC_PIN, PIN_MODE_0);
    uapi_gpio_set_dir(LCD_DC_PIN, GPIO_DIRECTION_OUTPUT);

    /* Hardware reset sequence */
    uapi_gpio_set_val(LCD_RST_PIN, GPIO_LEVEL_HIGH);
    osal_mdelay(10);
    uapi_gpio_set_val(LCD_RST_PIN, GPIO_LEVEL_LOW);
    osal_mdelay(10);
    uapi_gpio_set_val(LCD_RST_PIN, GPIO_LEVEL_HIGH);
    osal_mdelay(120);
}

static void lcd_backlight_on(void)
{
    uapi_pin_set_mode(LCD_BLK_PIN, PIN_MODE_0);
    uapi_gpio_set_dir(LCD_BLK_PIN, GPIO_DIRECTION_OUTPUT);
    uapi_gpio_set_val(LCD_BLK_PIN, GPIO_LEVEL_HIGH);
}

/* ========== ST7789 initialization commands ========== */

void st7789_init(void)
{
    /* Hardware reset */
    lcd_reset();

    /* Backlight on */
    lcd_backlight_on();

    /* ST7789S initialization sequence */
    lcd_write_command(0x01);  /* Software Reset */
    osal_mdelay(150);

    lcd_write_command(0x11);  /* Sleep Out */
    osal_mdelay(150);

    /* Memory Data Access Control: MY=1, MX=1, MV=0, RGB order */
    lcd_write_command(0x36);
    lcd_write_data_byte(0xC0);

    /* RGB565 (16-bit color) */
    lcd_write_command(0x3A);
    lcd_write_data_byte(0x05);

    /* Porch Setting */
    lcd_write_command(0xB2);
    lcd_write_data_byte(0x0C);
    lcd_write_data_byte(0x0C);
    lcd_write_data_byte(0x00);
    lcd_write_data_byte(0x33);
    lcd_write_data_byte(0x33);

    /* Gate Control */
    lcd_write_command(0xB7);
    lcd_write_data_byte(0x35);

    /* VCOM Setting */
    lcd_write_command(0xBB);
    lcd_write_data_byte(0x19);

    /* LCM Control */
    lcd_write_command(0xC0);
    lcd_write_data_byte(0x2C);

    /* LCM Control */
    lcd_write_command(0xC2);
    lcd_write_data_byte(0x01);

    /* FR Control */
    lcd_write_command(0xC3);
    lcd_write_data_byte(0x12);

    /* FR Control */
    lcd_write_command(0xC4);
    lcd_write_data_byte(0x20);

    /* Inversion On */
    lcd_write_command(0x21);

    /* Positive Voltage Gamma Control */
    lcd_write_command(0xE0);
    lcd_write_data_byte(0xD0);
    lcd_write_data_byte(0x04);
    lcd_write_data_byte(0x0D);
    lcd_write_data_byte(0x11);
    lcd_write_data_byte(0x13);
    lcd_write_data_byte(0x2B);
    lcd_write_data_byte(0x3F);
    lcd_write_data_byte(0x54);
    lcd_write_data_byte(0x4C);
    lcd_write_data_byte(0x18);
    lcd_write_data_byte(0x0D);
    lcd_write_data_byte(0x0B);
    lcd_write_data_byte(0x1F);
    lcd_write_data_byte(0x23);

    /* Negative Voltage Gamma Control */
    lcd_write_command(0xE1);
    lcd_write_data_byte(0xD0);
    lcd_write_data_byte(0x04);
    lcd_write_data_byte(0x0C);
    lcd_write_data_byte(0x11);
    lcd_write_data_byte(0x13);
    lcd_write_data_byte(0x2C);
    lcd_write_data_byte(0x3F);
    lcd_write_data_byte(0x44);
    lcd_write_data_byte(0x51);
    lcd_write_data_byte(0x2C);
    lcd_write_data_byte(0x1F);
    lcd_write_data_byte(0x1F);
    lcd_write_data_byte(0x20);
    lcd_write_data_byte(0x23);

    /* Display On */
    lcd_write_command(0x29);
    osal_mdelay(50);
}

/* ========== Drawing functions ========== */

void st7789_set_window(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1)
{
    uint8_t data[4] __attribute__((aligned(4)));

    /* For 240x240 display with MY=1, physical RAM mapped to 80-319 */
    y0 += 80;
    y1 += 80;

    /* Column Address Set */
    data[0] = (x0 >> 8) & 0xFF;
    data[1] = x0 & 0xFF;
    data[2] = (x1 >> 8) & 0xFF;
    data[3] = x1 & 0xFF;
    lcd_write_command_with_data(0x2A, data, 4);

    /* Row Address Set */
    data[0] = (y0 >> 8) & 0xFF;
    data[1] = y0 & 0xFF;
    data[2] = (y1 >> 8) & 0xFF;
    data[3] = y1 & 0xFF;
    lcd_write_command_with_data(0x2B, data, 4);

    /* Memory Write */
    lcd_write_command(0x2C);
}

void st7789_draw_pixel(uint16_t x, uint16_t y, uint16_t color)
{
    if (x >= ST7789_WIDTH || y >= ST7789_HEIGHT) {
        return;
    }
    st7789_set_window(x, y, x, y);
    uint8_t buf[4] __attribute__((aligned(4))) = { (color >> 8) & 0xFF, color & 0xFF, 0, 0 };
    lcd_write_data_buf(buf, 2);
}

void st7789_fill_color(uint16_t color)
{
    st7789_fill_rect(0, 0, ST7789_WIDTH, ST7789_HEIGHT, color);
}

void st7789_fill_rect(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color)
{
    if (x + w > ST7789_WIDTH || y + h > ST7789_HEIGHT) {
        return;
    }
    st7789_set_window(x, y, x + w - 1, y + h - 1);

    uint32_t total = (uint32_t)w * h;
    uint8_t hi = (color >> 8) & 0xFF;
    uint8_t lo = color & 0xFF;

    /* Send in chunks to avoid large stack allocation */
    uint8_t buf[240 * 2] __attribute__((aligned(4)));  /* One row of 240 pixels */
    uint32_t chunk_pixels = sizeof(buf) / 2;

    /* Fill the buffer with the color pattern */
    for (uint32_t i = 0; i < chunk_pixels; i++) {
        buf[i * 2] = hi;
        buf[i * 2 + 1] = lo;
    }

    uint32_t remaining = total;
    while (remaining > 0) {
        uint32_t count = remaining > chunk_pixels ? chunk_pixels : remaining;
        uint32_t bytes = count * 2;
        lcd_write_data_buf(buf, bytes);
        remaining -= count;
    }
}

void st7789_draw_char(uint16_t x, uint16_t y, char ch, const LCD_FontDef *font, uint16_t fg, uint16_t bg)
{
    if (ch < ' ' || ch > '~') {
        return;
    }

    uint32_t offset = (ch - ' ') * font->height * ((font->width + 7) / 8);
    uint16_t bytes_per_row = (font->width + 7) / 8;

    /* Set window for the character */
    st7789_set_window(x, y, x + font->width - 1, y + font->height - 1);

    /* Prepare pixel data buffer */
    uint8_t buf[16 * 2] __attribute__((aligned(4)));  /* Max font width 16 pixels */
    uint32_t buf_idx = 0;

    for (uint8_t row = 0; row < font->height; row++) {
        for (uint8_t col = 0; col < font->width; col++) {
            uint32_t byte_idx = offset + row * bytes_per_row + col / 8;
            uint8_t bit_idx = 7 - (col % 8);
            uint16_t color = (font->data[byte_idx] & (1 << bit_idx)) ? fg : bg;
            buf[buf_idx++] = (color >> 8) & 0xFF;
            buf[buf_idx++] = color & 0xFF;
        }
        /* Send one row at a time to keep buffer small */
        lcd_write_data_buf(buf, buf_idx);
        buf_idx = 0;
    }
}

void st7789_draw_string(uint16_t x, uint16_t y, const char *str, const LCD_FontDef *font, uint16_t fg, uint16_t bg)
{
    uint16_t cur_x = x;
    while (*str) {
        st7789_draw_char(cur_x, y, *str, font, fg, bg);
        cur_x += font->width;
        str++;
    }
}

void st7789_draw_chinese_string(uint16_t x, uint16_t y, const char *str, uint16_t fg, uint16_t bg)
{
    uint16_t cur_x = x;
    while (*str) {
        if (((uint8_t)*str) < 0x80) {
            /* Shift ASCII numbers down by 3 pixels to align with Chinese font baseline */
            st7789_draw_char(cur_x, y + 3, *str, &Font_12x24, fg, bg);
            cur_x += Font_12x24.width;
            str++;
        } else {
            // Assume 3-byte UTF-8 character for Chinese
            const uint8_t *data = NULL;
            for (int i = 0; i < CHINESE_FONT_NUM; i++) {
                if (Chinese_Font24x24[i].char_str[0] == str[0] &&
                    Chinese_Font24x24[i].char_str[1] == str[1] &&
                    Chinese_Font24x24[i].char_str[2] == str[2]) {
                    data = Chinese_Font24x24[i].data;
                    break;
                }
            }
            if (data) {
                st7789_set_window(cur_x, y, cur_x + 23, y + 23);
                uint8_t buf[24 * 2] __attribute__((aligned(4))); // One row
                for (int row = 0; row < 24; row++) {
                    int buf_idx = 0;
                    for (int x_byte = 0; x_byte < 3; x_byte++) {
                        uint8_t bits = data[row * 3 + x_byte];
                        for (int bit = 0; bit < 8; bit++) {
                            uint16_t color = (bits & (1 << (7 - bit))) ? fg : bg;
                            buf[buf_idx++] = (color >> 8) & 0xFF;
                            buf[buf_idx++] = color & 0xFF;
                        }
                    }
                    lcd_write_data_buf(buf, buf_idx);
                }
            }
            cur_x += 24;
            str += 3;
        }
    }
}

void st7789_draw_image(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t *data)
{
    if (x + w > ST7789_WIDTH || y + h > ST7789_HEIGHT) {
        return;
    }
    st7789_set_window(x, y, x + w - 1, y + h - 1);
    
    uint32_t total_pixels = (uint32_t)w * h;
    uint32_t remaining = total_pixels;
    const uint16_t *ptr = data;
    
    uint8_t buf[240 * 2] __attribute__((aligned(4)));
    uint32_t chunk_pixels = sizeof(buf) / 2;
    
    while (remaining > 0) {
        uint32_t count = remaining > chunk_pixels ? chunk_pixels : remaining;
        for (uint32_t i = 0; i < count; i++) {
            uint16_t color = *ptr++;
            buf[i * 2] = (color >> 8) & 0xFF;
            buf[i * 2 + 1] = color & 0xFF;
        }
        lcd_write_data_buf(buf, count * 2);
        remaining -= count;
    }
}

void st7789_draw_1bpp_image(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t *data, uint16_t fg, uint16_t bg)
{
    if (x + w > ST7789_WIDTH || y + h > ST7789_HEIGHT) {
        return;
    }
    st7789_set_window(x, y, x + w - 1, y + h - 1);
    
    uint32_t bytes_per_row = (w + 7) / 8;
    uint8_t buf[240 * 2] __attribute__((aligned(4)));
    
    for (uint16_t row = 0; row < h; row++) {
        uint32_t buf_idx = 0;
        for (uint16_t col = 0; col < w; col++) {
            uint32_t byte_idx = row * bytes_per_row + col / 8;
            uint8_t bit_idx = 7 - (col % 8);
            uint16_t color = (data[byte_idx] & (1 << bit_idx)) ? fg : bg;
            buf[buf_idx++] = (color >> 8) & 0xFF;
            buf[buf_idx++] = color & 0xFF;
        }
        lcd_write_data_buf(buf, buf_idx);
    }
}

void st7789_show_emoji(emoji_type_t type)
{
    const uint16_t *data = NULL;
    switch(type) {
        case EMOJI_SMILE: data = emoji_smile; break;
        case EMOJI_SAD: data = emoji_sad; break;
        case EMOJI_STORY: data = emoji_story; break;
        case EMOJI_MUSIC: data = emoji_music; break;
        default: return;
    }
    /* Clear the screen */
    st7789_fill_color(COLOR_BLACK);
    /* Draw 180x180 centered at (30,30) */
    st7789_draw_image(30, 30, 180, 180, data);
}
