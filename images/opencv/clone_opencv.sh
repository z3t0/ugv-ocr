#!/bin/bash

# Script for installing opencv
git clone https://github.com/opencv/opencv.git
cd opencv
cd ..
 
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
cd ..

cd opencv
mkdir build
cd build
