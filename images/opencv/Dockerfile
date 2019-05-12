FROM ubuntu:18.04

RUN apt-get update -y && apt-get upgrade -y

# Install OS Libraries
RUN	apt-get -y remove x264 libx264-dev

## Install dependencies
RUN	apt-get -y install build-essential checkinstall cmake pkg-config yasm
RUN	apt-get -y install git gfortran
RUN	apt-get -y install libjpeg8-dev libpng-dev

RUN	apt-get -y install software-properties-common
RUN	add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
RUN	apt-get -y update

RUN	apt-get -y install libjasper1
RUN	apt-get -y install libtiff-dev

RUN	apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
RUN	apt-get -y install libxine2-dev libv4l-dev
RUN	cd /usr/include/linux
RUN	ln -s -f ../libv4l1-videodev.h videodev.h
RUN	cd "$cwd"

RUN	apt-get -y install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
RUN	apt-get -y install libgtk2.0-dev libtbb-dev qt5-default
RUN	apt-get -y install libatlas-base-dev
RUN	apt-get -y install libfaac-dev libmp3lame-dev libtheora-dev
RUN	apt-get -y install libvorbis-dev libxvidcore-dev
RUN	apt-get -y install libopencore-amrnb-dev libopencore-amrwb-dev
RUN	apt-get -y install libavresample-dev
RUN	apt-get -y install x264 v4l-utils

# Optional dependencies
RUN	apt-get -y install libprotobuf-dev protobuf-compiler
RUN	apt-get -y install libgoogle-glog-dev libgflags-dev
RUN	apt-get -y install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen

# Install Python Libraries
RUN apt -y install python3-dev python3-pip
RUN pip3 install -U pip numpy
RUN apt -y install python3-testresources
RUN pip3 install wheel numpy scipy matplotlib scikit-image scikit-learn ipython dlib

# Clone OpenCV
ADD ./clone_opencv.sh /
RUN chmod +x /clone_opencv.sh
RUN /clone_opencv.sh

# Install OpenCV
ADD ./install_opencv.sh /
RUN chmod +x /install_opencv.sh
RUN /install_opencv.sh

CMD ["bash"]
