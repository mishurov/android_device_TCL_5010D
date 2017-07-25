#!/bin/bash

echo Revert av
cd ../../../../frameworks/av
rm media/libmedia/mtkaudio_stubs.cpp
rm av.patch
git checkout .
cd -

echo Revert system
cd ../../../../system/core
rm ril.patch
git checkout .
cd -

echo Revert net
cd ../../../../system/netd
rm tethering.patch
git checkout .
