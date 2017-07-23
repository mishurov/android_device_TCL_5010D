#!/bin/bash

echo Patch av
cp 0001-mtk-av.patch ../../../../frameworks/av/0001-mtk-av.patch
cd ../../../../frameworks/av
patch -p1 <0001-mtk-av.patch

echo Patch System
cd -
cp ril_service.patch ../../../../system/core/ril_service.patch
cp 0004-libnetutils-add-MTK-bits.patch ../../../../system/core/0004-libnetutils-add-MTK-bits.patch
cd ../../../../system/core
patch -p1 <ril_service.patch
patch -p1 <0004-libnetutils-add-MTK-bits.patch

cd -
cp bt.patch ../../../../system/bt.patch
cd ../../../../system
patch -p1 <bt.patch

