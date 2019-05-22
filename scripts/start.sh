#!/bin/sh

# Get path of the module to mount
cd  ..
module_path=`pwd`

xhost +

# Run docker
docker run \
			 --mount type=bind,source="$module_path",target=/usr/src/app \
			 -e DISPLAY=$DISPLAY \
			 -v /tmp/.X11-unix:/tmp/.X11-unix \
			 -it ugv-ocr $1
