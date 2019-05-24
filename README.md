# Darknet Docker wrapper
Yolo it's cool, but installing it's a pain. Which OpenCV, which CUDA?
This script will make your life a bit easier.

# WTF is this?
Docker is the most beautiful thing in the world: you can install anything you want and it will work everywhere (yep, even Darknet).

# What is included in this repo
- You have both CPU and GPU verisons.
- Python example for yolov3-tiny (weights included)
- All config and data for darknet are included (if something is missing go [here](https://github.com/pjreddie/darknet))

# Docker installation

## CPU only
[https://docs.docker.com/install/](https://docs.docker.com/install/)
Then
`sudo bash build_cpu.sh`

## With GPU
[https://github.com/NVIDIA/nvidia-docker](https://github.com/NVIDIA/nvidia-docker)
Then
`sudo bash build.sh`

# FAQ

## How long does it take to build the docker container?
On my computer (powered by i7 5820k) it took almost an hour.

## cv2.imshow doesn't work
Because you have to enable desktop forward, so run `xhost +` on your host (not the container).

## I got CUDA path build errors while compiling the GPU version
Edit build_darknet/Makefile at row 50-51 and specify your CUDA path.

## How can I add more Python packages?
Open the Dockerfile and search for
```bash
# Install python dependencies
#RUN apt-get install python3-tk -y
#RUN pip3 install matplotlib
```
Then jst edit anything as you would do in a native machine (not as on Anaconda).