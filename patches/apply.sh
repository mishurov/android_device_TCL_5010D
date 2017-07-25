#!/bin/bash

echo "Patch av (fix sound)"
cp av.patch ../../../../frameworks/av/av.patch
cd ../../../../frameworks/av
patch -p1 <av.patch
cd -

echo "Patch core (fix ril)"
cp ril.patch ../../../../system/core/ril.patch
cd ../../../../system/core
patch -p1 <ril.patch
cd -

echo "Patch netd (fix tethering)"
cp tethering.patch ../../../../system/netd/tethering.patch
cd ../../../../system/netd
patch -p1 <tethering.patch
