FROM opencv

# Install Tesseract
RUN apt-get update -y
RUN apt-get install tesseract-ocr -y

# Install Python bindings
RUN pip3 install pillow
RUN pip3 install pytesseract
RUN pip3 install imutils
