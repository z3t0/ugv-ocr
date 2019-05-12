#!/bin/bash

cd opencv/build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
			-D CMAKE_INSTALL_PREFIX=/usr/local \
			-D INSTALL_C_EXAMPLES=ON \
			-D INSTALL_PYTHON_EXAMPLES=ON \
			-D WITH_TBB=ON \
			-D WITH_V4L=ON \
			-D WITH_QT=ON \
			-D WITH_OPENGL=ON \
			-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
			-D BUILD_EXAMPLES=ON ..

make -j12
make install


