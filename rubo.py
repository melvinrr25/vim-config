#!/usr/bin/env python

import os
import random
import string
from datetime import datetime

def get_random_string(length):
    return ''.join(random.choice(string.ascii_letters) for i in range(length))

def execute():
    r = get_random_string(4).lower()
    cmd = "rm ./danestreet.code-workspace/*"
    os.system(cmd)
    file = "{}.rb".format(r)
    cmd = "pbpaste >> ./danestreet.code-workspace/{}".format(file)
    os.system(cmd)
    cmd = "clear && rubocop ./danestreet.code-workspace/{}".format(file)
    os.system(cmd)

execute()
