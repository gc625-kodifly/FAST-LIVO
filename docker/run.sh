#!/bin/bash

xhost +local:docker  # More secure than 'xhost +'

docker run -it --rm --runtime=nvidia --net=host --privileged \
  -e DISPLAY=$DISPLAY \
  -v /home/kodifly/livo_ws/:/home/admin/workspace \
  -v /home/kodifly/timeshare:/home/admin/timeshare \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $HOME/.Xauthority:/home/admin/.Xauthority:rw \
  -v /dev:/dev \
  fast_livo:arm \
  /bin/bash
