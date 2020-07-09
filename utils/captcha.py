# coding:utf-8
import base64
import random

import StringIO
from PIL import ImageDraw, ImageFont, Image


def create_idcode(mlen):
    """
    @attention: 生成验证码
    @param mlen: 验证码长度
    @return: [验证码字符串,验证码图片base64]
    """
    code = get_random_code(mlen)
    # 创建图片和画笔
    width = 100
    height = 40
    size = (width, height)
    image = Image.new("RGBA", size, "#F5F5F7")
    draw = ImageDraw.Draw(image)
    fill_code(code, mlen, draw, width, height)
    draw_line(draw, width, height, 5)
    draw_points(draw, 10, width, height)
    buf = StringIO.StringIO()
    image.save(buf, 'png', quality=70)
    buf_str = base64.b64encode(buf.getvalue())
    return ''.join(code), buf_str

############## 辅助函数 ##############
def rndColor():
    """
    随机颜色
    :return:
    """
    return random.randint(32, 127), random.randint(32, 127), random.randint(32, 127)

def get_random_code(number):
    """
    @attention: 获取随机码（排除难以识别的o，0，i，1，z，2等）
    """
    return random.sample("abcdefghjkmnpqrstuvwxyABCDEFGHJKMNPQRSTUVWXY3456789", number)


def fill_code(code, number, draw, width, height):
    """
    @attention: 填充验证码
    @param code: 验证码
    @param draw: 画笔
    """
    font_path = "/opt/yuantingfei/webapp/utils/font/consola.ttf"
    font = ImageFont.truetype(font_path, 34)  # 验证码的字体和字体大小
    for t in xrange(number):
        draw.text((20 * t + 10, 10),  code[t], font=font, fill=rndColor())


def draw_line(draw, width, height, number=1):
    for i in xrange(number):
        begin = (random.randint(0, width / 2), random.randint(0, height))
        end = (random.randint(width / 2, width), random.randint(0, height))
        draw.line([begin, end], fill="#6CC4B3", width=3)


def draw_points(draw, point_chance, width, height):
    """
    绘制干扰点
    :param draw: 画笔
    :param point_chance: 干扰点出现概率：0到100
    :param width:
    :param height:
    :return:
    """
    chance = min(100, max(0, int(point_chance)))  # 大小限制在[0, 100]

    for w in xrange(width):
        for h in xrange(height):
            tmp = random.randint(0, 100)
            if tmp > 100 - chance:
                draw.point((w, h), fill=(0, 0, 0))


if __name__ == "__main__":
  print create_idcode(4)
  print 1