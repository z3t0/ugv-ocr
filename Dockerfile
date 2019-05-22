FROM tesseract

# Working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app/ocr-module


ENTRYPOINT ["/usr/src/app/scripts/entrypoint.sh"]
