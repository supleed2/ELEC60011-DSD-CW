from cmath import cos
from typing import Concatenate
import numpy as np

start = 0
stop = 255
step = 1 / 1024
x = list(np.arange(start, stop, step)) + [stop]
acc = 0
for i in x:
    # acc += 0.5 * i + i * i * cos((i - 128) / 128)
    acc += i + i * i
print(acc.real)
