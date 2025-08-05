#!/bin/sh

# check the if root? ------------------------------
userid=`id -u`
if [ $userid -ne "0" ]; then
        echo "you're not root? run with sudo"
        exit
fi

CURDIR=`pwd`

cd $CURDIR

#apt update
apt-get install -y build-essential

#apt-get install -y libusb-1.0-0-dev
cd 3rd_party_library/libusb
./make_install.sh
cd $CURDIR

cd 3rd_party_library/libjpeg
./make_install.sh
cd $CURDIR