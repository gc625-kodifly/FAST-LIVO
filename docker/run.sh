#!/bin/bash

xhost +local:docker  # More secure than 'xhost +'

docker run -it --rm --gpus all --net=host --privileged \
  -e DISPLAY=$DISPLAY \
  -v /home/gabriel/fast_livo_ws:/home/admin/workspace \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $HOME/.Xauthority:/home/admin/.Xauthority:rw \
  docker.io/library/fast_livo:latest \
  /bin/bash
