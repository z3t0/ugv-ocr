FROM tesseract

# Working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

CMD ["bash"]
