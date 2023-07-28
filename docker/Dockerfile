FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt -y update \
	&& apt -y install apt-utils \
	&& apt -y install build-essential \
	&& apt -y install git \
	&& apt -y install libsuitesparse-dev libeigen3-dev libboost-all-dev \
	&& apt -y install libopencv-dev \
	&& apt -y install cmake \
	&& apt -y install libglew-dev \
	&& apt -y install libegl1-mesa-dev \
	&& apt -y install ffmpeg libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libavdevice-dev \
	&& apt -y install zlib1g-dev \
	&& apt -y install sudo \
	&& apt -y install zlib1g-dev \
	&& apt -y install tar \
	&& apt -y install libgoogle-glog-dev \
	&& apt -y install vim

# add user
# RUN adduser user sudo
RUN useradd -m user -s /bin/bash && yes password | passwd user

# create useful folders
RUN cd /home/user/ \
	&& mkdir -p repos/ \
	&& mkdir -p data

# Script to run opening container
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

# Create user at the end to stay root for all the installation steps
RUN usermod -aG sudo user
USER user
WORKDIR /home/user/

