#!/bin/sh

# Build opencv
docker build ../images/opencv/ -t opencv

# Build tesseract
docker build ../images/tesseract/ -t tesseract 

# Build base image
docker build ../ -t ugv-ocr
