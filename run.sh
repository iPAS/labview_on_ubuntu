#!/bin/bash

docker run -it --rm  \
    --net host  \
    --name fedora_lv  \
    -v "$(pwd)/data":'/data'  \
    fedora  \
    /bin/bash
