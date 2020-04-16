#!/usr/bin/env python
import sys
import os

data = sys.argv[1]

word_list = list(data)
word_list[0] = word_list[0].lower()
res = ''
for i, l in enumerate(word_list):
    if l.isupper():
        l = '_' + l.lower()
    res = res + l

w = res

cmd = "echo {} | tr -d '\n' | pbcopy".format(w)
os.system(cmd)


