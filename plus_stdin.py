#!/usr/bin/python3
# SPDX-FileCopyrightText: 2022 Shimono Mao <simonomao1535@gmail.com>
import sys

x = 0
for line in sys.stdin:
    x += float(line)
    try:
        x += int(line)
    except:
        x += float(line)
    print(x)
