#!/bin/bash

cd ../../../../frameworks/av
rm 0001-mtk-av.patch
rm media/libmedia/mtkaudio_stubs.cpp
git checkout .
cd -

cd ../../../../system/core
rm 0004-libnetutils-add-MTK-bits.patch
rm ril_service.patch
rm libnetutils/ifc_utils.c.orig
git checkout .
cd -

cd ../../../../system
rm bt.patch 
cd netd
git checkout .
