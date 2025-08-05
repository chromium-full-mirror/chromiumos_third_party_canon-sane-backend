#!/bin/sh

CURDIR=`pwd`

cd prj_linux

make clean

make

cp vs.so ../../../files/p215iivs.so
cp vs.so ../../../files/drp215iivs.so

cd $CURDIR