#!/bin/bash
# --net host  \
# --shm-size=256m  \
# echo 'Default password: vncpassword'

docker run -it --rm  \
    --name fedora_lv  \
    -v "$(pwd)/data":'/data'  \
    -p 5901:5901 -p 6901:6901  \
    -e VNC_RESOLUTION=1920x1080  \
    os_labview  \
    /bin/bash
