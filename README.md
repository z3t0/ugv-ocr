# ugv-ocr

This is an OCR module for the 2019 Canada UGV Competition.

The goal of this module is to extract text from images of pylons with objects with printed text.

## Requirements
- Docker

## Usage

``` shell
cd scripts
sh ./scripts/start.sh images/example_01.jpg
```

The directory ocr-module is the base path from which the images are being detected.

To test do the following

1. Take an image in jpg
2. Place it in the ocr-module/images directory (the top level project directory is mounted into the container)
3. Run the following command, where "test.jpg" is the name of the image.

``` shell
cd scripts
sh start.sh images/test.jpg
```

## Installation

``` shell
sh ./scripts/build.sh
```

## Attributions
This module uses many technologies and tools, some are listed below.

- Python
- OpenCV
- Tesseract
- iPython

## TODO
- Re-factor into a HTTP API
- Add RTSP stream support
- Use GPU
- Testing
