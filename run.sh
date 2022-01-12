#!/bin/bash
# --net host  \

docker run -it --rm  \
    --name fedora_lv  \
    -v "$(pwd)/data":'/data'  \
    -p 5901:5901  \
    fedora_lv  \
    /bin/bash
