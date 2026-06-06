import os
from PIL import Image, ImageDraw, ImageFont

chars = '年月日号，星期一二三四五六点分秒'
font_path = 'C:/Windows/Fonts/msyh.ttc'
if not os.path.exists(font_path):
    font_path = 'C:/Windows/Fonts/simhei.ttf'

font = ImageFont.truetype(font_path, 21)

with open('chinese_font.h', 'w', encoding='utf-8') as f:
    f.write('#ifndef CHINESE_FONT_H\n#define CHINESE_FONT_H\n\n')
    f.write('#include <stdint.h>\n\n')
    f.write('typedef struct {\n')
    f.write('    const char *char_str;\n')
    f.write('    const uint8_t *data;\n')
    f.write('} ChineseFontDef;\n\n')
    
    char_names = []
    
    for idx, c in enumerate(chars):
        img = Image.new('1', (24, 24), color=0)
        d = ImageDraw.Draw(img)
        d.text((1, -2), c, font=font, fill=1)
        
        data = []
        for y in range(24):
            for x_byte in range(3):
                byte_val = 0
                for bit in range(8):
                    x = x_byte * 8 + bit
                    pixel = img.getpixel((x, y))
                    if pixel:
                        byte_val |= (1 << (7 - bit))
                data.append(byte_val)
        
        name = f'ch_font_{idx}'
        char_names.append((c, name))
        f.write(f'static const uint8_t {name}[72] = {{\n')
        for i in range(0, 72, 12):
            f.write('    ' + ', '.join([f'0x{b:02X}' for b in data[i:i+12]]) + ',\n')
        f.write('};\n\n')
        
    f.write(f'const ChineseFontDef Chinese_Font24x24[{len(chars)}] = {{\n')
    for c, name in char_names:
        f.write(f'    {{\"{c}\", {name}}},\n')
    f.write('};\n\n')
    f.write(f'#define CHINESE_FONT_NUM {len(chars)}\n\n')
    f.write('#endif\n')
