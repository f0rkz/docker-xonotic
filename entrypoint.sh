#!/bin/bash
XONOTIC_URL=https://github.com/garymoon/xonotic/releases/download/xonotic-v0.8.5/xonotic-0.8.5.zip

if [ ! -d "/data/Xonotic" ]
then
    echo "/data/Xonotic does not exist. Installing... This might take a minute."
    mkdir -p /data
    wget $XONOTIC_URL -O /data/xonotic.zip
    cd /data && unzip -a xonotic.zip
fi

cd /data/Xonotic
./xonotic-linux-dedicated.sh
