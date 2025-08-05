#!/bin/sh

CURDIR=`pwd`

./release.sh

cd libjpeg

make install

cd $CURDIR

rm -r libjpeg

chmod 777 /usr/local/lib/libjpeg.so


