#!/bin/sh

CURDIR=`pwd`

apt-get install -y autoconf
apt-get install -y libtool
apt-get install -y pkg-config
apt-get install -y libudev-dev

./release.sh

cd libusb

make install

cd $CURDIR

