import sys
from PIL import Image, ImageDraw, ImageFont

def generate_c_array():
    text = "请用'你好,沈工小智'唤醒我"
    font_size = 16
    
    # Try common Windows fonts
    fonts = ["C:/Windows/Fonts/msyh.ttc", "C:/Windows/Fonts/simhei.ttf"]
    font = None
    for f in fonts:
        try:
            font = ImageFont.truetype(f, font_size)
            break
        except:
            pass
            
    if font is None:
        print("Could not load font")
        return

    # Calculate width
    # In Pillow >= 10, use getbbox or getlength
    try:
        width = int(font.getlength(text))
    except:
        width = font.getsize(text)[0]
        
    height = font_size
    
    img = Image.new('1', (width, height), color=0)
    draw = ImageDraw.Draw(img)
    draw.text((0, -2), text, font=font, fill=1) # Offset slightly to center

    print(f"// Generated prompt image: {width}x{height}")
    print(f"const uint8_t prompt_image_data[] = {{")
    
    bytes_per_row = (width + 7) // 8
    
    out = ""
    for y in range(height):
        for x_byte in range(bytes_per_row):
            b = 0
            for bit in range(8):
                x = x_byte * 8 + bit
                if x < width:
                    if img.getpixel((x, y)):
                        b |= (1 << (7 - bit))
            out += f"0x{b:02X}, "
        out += "\n"
        
    print(out + "};")
    print(f"const int prompt_width = {width};")
    print(f"const int prompt_height = {height};")

if __name__ == "__main__":
    generate_c_array()
