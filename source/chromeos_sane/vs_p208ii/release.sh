#!/bin/sh

CURDIR=`pwd`

cd prj_linux

make clean

make

cp vs.so ../../../files/p208iivs.so
cp vs.so ../../../files/drp208iivs.so

cd $CURDIR