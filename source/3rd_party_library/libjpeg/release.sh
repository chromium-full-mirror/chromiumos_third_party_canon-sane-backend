#!/bin/sh

CURDIR=`pwd`

echo "rm -r libjpeg"
echo ""
echo "rm lib/*.a"
rm lib/*.a
echo "rm include/*.h"
rm -r include/*

rm -r libjpeg

tar xvf jpegsrc.v9e.tar

mv jpeg-9e libjpeg

cd libjpeg

./configure

make

cd $CURDIR

cp libjpeg/.libs/*.so ../../files/

echo ""
echo ""
echo ""
ls -l ../../files
