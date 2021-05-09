#! /bin/bash

ssh -f -L 19000:127.0.0.1:19000 -L 24800:127.0.0.1:24800 tunneler@152.66.246.223 -p42222 "sleep 10"

barrierc 127.0.0.1 --daemon

ffmpeg -f x11grab -s 2560x1080 -framerate 15 -i :1.0+0,0 -c:v libx264 -pix_fmt yuv420p -an -preset ultrafast -tune zerolatency -f mpegts tcp://127.0.0.1:19000
