#!/usr/bin/python3
import sys

x = 0
for line in sys.stdin:
    try:
        x += int(line)
    except:
        x += float(line)
    print(x)
