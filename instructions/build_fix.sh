#!/bin/sh
mkdir -p ~/android/system/out/target/product/5010D/obj/KERNEL_OBJ/usr

cd ~/android/system/frameworks/av
git apply -v ~/android/system/device/TCL/5010D/instructions/0001-libmedia-stub-out-MTK-specific-bits-audio-working.patch

# android/system/core/init/init.cpp
# -static const char *ENV[32];
# +// xen0n: some MTK services (e.g. ril-daemon-mtk) require very #   large number
# +// of sockets, which can't be contained in 32 entries minus other #variables.
# +static const char *ENV[64];
