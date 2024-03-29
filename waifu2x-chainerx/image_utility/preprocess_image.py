import os
import argparse
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt

p = argparse.ArgumentParser()
p.add_argument('--quality', '-q', type=int, default=10)
p.add_argument('--input', '-i')
p.add_argument('--output_folder', '-o', default='./')
args = p.parse_args()


if __name__ == '__main__':
    if not os.path.exists(args.output_folder):
        os.makedirs(args.output_folder)
    filename = os.path.basename(args.input).split('.')[0]
    image = Image.open(args.input).convert("RGB")
    image.save(args.output_folder + filename + ".png", format="PNG", quality=args.quality)