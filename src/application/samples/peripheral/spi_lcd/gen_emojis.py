import os
from PIL import Image, ImageDraw

def rgb2565(r, g, b):
    return ((r & 0xF8) << 8) | ((g & 0xFC) << 3) | (b >> 3)

size = 180

def create_base_face():
    img = Image.new("RGB", (size, size), "black")
    draw = ImageDraw.Draw(img)
    # White circular face
    draw.ellipse((10, 10, 170, 170), fill="white")
    return img, draw

# 1. SMILE
img_smile, draw = create_base_face()
# Eyes
draw.ellipse((50, 50, 75, 85), fill="black")
draw.ellipse((105, 50, 130, 85), fill="black")
# Smile
draw.arc((40, 70, 140, 140), start=20, end=160, fill="black", width=12)

# 2. ANGRY (Sad/Angry)
img_angry, draw = create_base_face()
# Eyes
draw.ellipse((50, 65, 75, 90), fill="black")
draw.ellipse((105, 65, 130, 90), fill="black")
# Angry Eyebrows
draw.line((35, 45, 75, 65), fill="black", width=10)
draw.line((145, 45, 105, 65), fill="black", width=10)
# Angry/Sad Mouth
draw.arc((60, 110, 120, 150), start=200, end=340, fill="black", width=10)

# 3. STORY
img_story, draw = create_base_face()
# Eyes
draw.ellipse((55, 55, 70, 75), fill="black")
draw.ellipse((110, 55, 125, 75), fill="black")
# Glasses
draw.ellipse((35, 40, 85, 90), outline="#1E90FF", width=6)
draw.ellipse((95, 40, 145, 90), outline="#1E90FF", width=6)
draw.line((85, 65, 95, 65), fill="#1E90FF", width=6)
# Open Mouth (speaking)
draw.ellipse((70, 115, 110, 145), fill="black")
# Book (bottom right)
draw.rectangle((110, 120, 170, 170), fill="#8B4513") # Brown cover
draw.rectangle((115, 125, 165, 165), fill="white")   # Pages
draw.line((140, 125, 140, 165), fill="#8B4513", width=3) # Spine
# Text lines in book
draw.line((120, 135, 135, 135), fill="black", width=2)
draw.line((120, 145, 135, 145), fill="black", width=2)
draw.line((145, 135, 160, 135), fill="black", width=2)
draw.line((145, 145, 160, 145), fill="black", width=2)

# 4. MUSIC
img_music, draw = create_base_face()
# Closed enjoying eyes
draw.arc((45, 60, 75, 80), start=200, end=340, fill="black", width=8)
draw.arc((105, 60, 135, 80), start=200, end=340, fill="black", width=8)
# Small smile
draw.arc((70, 100, 110, 125), start=20, end=160, fill="black", width=8)
# Headphones Band
draw.arc((5, -15, 175, 130), start=180, end=360, fill="#FF4500", width=14)
# Ear cups
draw.rounded_rectangle((0, 60, 35, 130), radius=10, fill="#32CD32")
draw.rounded_rectangle((145, 60, 180, 130), radius=10, fill="#32CD32")
# Music Note
draw.ellipse((135, 25, 145, 35), fill="#FFD700")
draw.line((145, 30, 145, 5), fill="#FFD700", width=4)
draw.line((145, 5, 160, 10), fill="#FFD700", width=4)

frames = {
    'SMILE': img_smile,
    'SAD': img_angry,
    'STORY': img_story,
    'MUSIC': img_music
}

with open('emoji_frames.h', 'w') as f:
    f.write('#ifndef EMOJI_FRAMES_H\n#define EMOJI_FRAMES_H\n\n')
    f.write('#include <stdint.h>\n\n')
    
    for name, img in frames.items():
        f.write(f'const uint16_t emoji_{name.lower()}[180 * 180] = {{\n')
        data = list(img.getdata())
        flat = []
        for r, g, b in data:
            flat.append(rgb2565(r, g, b))
        
        for i in range(0, len(flat), 12):
            f.write('    ' + ', '.join([f'0x{c:04X}' for c in flat[i:i+12]]) + ',\n')
        f.write('};\n\n')
    
    f.write('#endif\n')
