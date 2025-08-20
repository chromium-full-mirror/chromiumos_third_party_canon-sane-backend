#!/bin/sh

CURDIR=`pwd`

cd LLiPmDRHachi/LLiPm.linuxproj

make clean

make DRP208

cp Obj/*.a ../../lib/

make clean

make DRC225

cp Obj/*.a ../../lib/

make clean

make DRP215

cp Obj/*.a ../../lib/

make clean

make DRC240

cp Obj/*.a ../../lib/

cd $CURDIR

ls -la ./lib
