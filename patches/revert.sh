#!/bin/bash

echo Revert av
cd ../../../../frameworks/av
rm 0001-mtk-av.patch
rm media/libmedia/mtkaudio_stubs.cpp
git checkout .
cd -

echo Revert system
cd ../../../../system/core
rm 0004-libnetutils-add-MTK-bits.patch
rm ril_service.patch
rm libnetutils/ifc_utils.c.orig
git checkout .
cd -

echo Revert net
cd ../../../../system
rm tethering.patch
cd netd
git checkout .
