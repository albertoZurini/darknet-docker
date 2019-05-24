#!/bin/bash
# GPU Darknet Run
# By Alberto Zurini
# https://github.com/albertoZurini/darknet-docker

nvidia-docker run --rm -it \
--device=/dev/nvidiactl \
--device=/dev/nvidia-uvm \
--device=/dev/nvidia0 \
-v nvidia_driver_384.66:/usr/local/nvidia:ro \
--env DISPLAY=unix$DISPLAY  \
--privileged --volume $XAUTH:/root/.Xauthority \
--volume /tmp/.X11-unix:/tmp/.X11-unix \
-v $PWD/script:/script \
--name darknet_docker darknet_docker bash