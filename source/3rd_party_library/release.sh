#!/bin/bash

# check the if root? ------------------------------
#userid=`id -u`
#if [ $userid -ne "0" ]; then
#        echo "you're not root? run with sudo"
#        exit
#fi

CURDIR=`pwd`

cd $CURDIR

mkdir include
mkdir lib

rm -r include/*
rm -r lib/*

SUBPROJECTS=(
    libusb
    libjpeg
    libtiff
)

for ((i =0; i < ${#SUBPROJECTS[@]}; ++i))
do
    cd $CURDIR
    cd ${SUBPROJECTS[$i]}
    ./release.sh
done

#osversion increment
cd $CURDIR
#sudo ./version_increment.sh

#userland 最後にuserland/cei以下を上書きする
#cd $CURDIR
#cd userland
#sudo ./release_after.sh
