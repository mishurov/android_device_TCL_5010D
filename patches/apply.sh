#!/bin/bash

echo "Patch av (fix sound)"
cp av.patch ../../../../frameworks/av/av.patch
cd ../../../../frameworks/av
patch -p1 <av.patch

echo "Patch core (fix ril)"
cd -
cp ril.patch ../../../../system/core/ril.patch
cd ../../../../system/core
patch -p1 <ril.patch

echo "Patch netd (fix tethering)"
cd -
cp tethering.patch ../../../../system/netd/tethering.patch
cd ../../../../system/netd
patch -p1 <tethering.patch
