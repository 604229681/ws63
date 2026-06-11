#ifndef ST7789_H
#define ST7789_H

#include <stdint.h>

/* LCD resolution: 240x240 for IPS 1.54 inch */
#define ST7789_WIDTH   240
#define ST7789_HEIGHT  240

/* Color definitions (RGB565) */
#define COLOR_BLACK   0x0000
#define COLOR_WHITE   0xFFFF
#define COLOR_RED     0xF800
#define COLOR_GREEN   0x07E0
#define COLOR_BLUE    0x001F
#define COLOR_YELLOW  0xFFE0
#define COLOR_CYAN    0x07FF
#define COLOR_MAGENTA 0xF81F

/* GPIO pin definitions (from circuit diagram) */
#define LCD_RST_PIN   4
#define LCD_DC_PIN    3
#define LCD_BLK_PIN   2

/* Font definition */
typedef struct {
    const uint8_t width;
    const uint8_t height;
    const uint8_t *data;
} LCD_FontDef;

/* API functions */
void st7789_init(void);
void st7789_fill_color(uint16_t color);
void st7789_draw_pixel(uint16_t x, uint16_t y, uint16_t color);
void st7789_fill_rect(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);
void st7789_draw_char(uint16_t x, uint16_t y, char ch, const LCD_FontDef *font, uint16_t fg, uint16_t bg);
void st7789_draw_string(uint16_t x, uint16_t y, const char *str, const LCD_FontDef *font, uint16_t fg, uint16_t bg);
void st7789_draw_chinese_string(uint16_t x, uint16_t y, const char *str, uint16_t fg, uint16_t bg);
void st7789_set_window(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1);
void st7789_draw_image(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t *data);
void st7789_draw_1bpp_image(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t *data, uint16_t fg, uint16_t bg);

typedef enum {
    EMOJI_SMILE,
    EMOJI_SAD,
    EMOJI_STORY,
    EMOJI_MUSIC
} emoji_type_t;

void st7789_show_emoji(emoji_type_t type);

/* External font definitions */
extern const LCD_FontDef Font_8x16;
extern const LCD_FontDef Font_12x24;

#endif /* ST7789_H */
