#!/bin/sh

CURDIR=`pwd`

echo "rm -r libusb"
echo ""
echo "rm lib/*.a"
rm lib/*.a
echo "rm include/*.h"
rm -r include/*

rm -r libusb

unzip libusb-1.0.26.zip

mv libusb-1.0.26 libusb

cd libusb

autoreconf --install

./configure

make

cd $CURDIR