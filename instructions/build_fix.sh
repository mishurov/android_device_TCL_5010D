#!/bin/sh
mkdir -p ~/android/system/out/target/product/5010D/obj/KERNEL_OBJ/usr

cd ~/android/system/frameworks/av
git apply -v ~/android/system/device/TCL/5010D/instructions/0001-libmedia-stub-out-MTK-specific-bits-audio-working.patch

