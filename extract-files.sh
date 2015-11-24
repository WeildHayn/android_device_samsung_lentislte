#!/bin/sh

VENDOR=samsung
DEVICE=lentislte

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp /home/xiaojian/flyme/devices/g906/vendor/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
