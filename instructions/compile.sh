# init.patch: ~/android/system/system/core

make clean
repo sync --force-sync
mkdir -p ~/android/system/out/target/product/5010D/obj/KERNEL_OBJ/usr
source build/envsetup.sh
export USE_CCACHE=1
prebuilts/misc/linux-x86/ccache/ccache -M 50G
brunch 5010D

