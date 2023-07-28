#!/bin/bash
WORKSPACE="/home/user/repos"

cd $WORKSPACE/ \
	&& git clone --recursive https://github.com/stevenlovegrove/Pangolin.git \
	&& cd Pangolin/ \
	&& git checkout v0.6 \
	&& mkdir build && cd build \
	&& cmake -DCPP11_NO_BOOST=1 .. \
	&& make -j4

cd $WORKSPACE/thirdparty/ \
	&& tar -zxvf libzip-1.1.1.tar.gz \
    && cd libzip-1.1.1/ \
	&& ./configure \
	&& make \
	&& sudo make install \
	&& sudo cp lib/zipconf.h /usr/local/include/zipconf.h

cd $WORKSPACE/ \
	&& mkdir -p build \
    && cd build \
	&& cmake .. \
	&& make -j4

cd $WORKSPACE

# Execute the command passed into this entrypoint
exec "$@"
