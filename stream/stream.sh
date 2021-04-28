#!/bin/bash

ffmpeg -f x11grab -s 2560x1080 -framerate 15 -i :0.0+0,0 -c:v libx264 -pix_fmt yuv420p -an -preset ultrafast -tune zerolatency -f mpegts tcp://192.168.0.64:19000
