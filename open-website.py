#!/usr/bin/python3.8

import webbrowser
import socket
import time
import sys


def connected():
    try:
        socket.create_connection(("1.1.1.1", 53))
        return True
    except OSError:
        pass
    return False


t = 0
x = 0

while x == 0:
    if connected() is True:
        x = 1
        webbrowser.open_new(sys.argv[1])
    time.sleep(1)
    t = t+1
    if t == 10:
        x = 1
