#!/bin/bash

echo "Setting Up Environment"
echo ""
export ARCH=arm64
export SUBARCH=arm64

# Variables
export Image="$(pwd)/out/arch/arm64/boot/Image.gz-dtb"
export VMTC="$(pwd)/clang"

# Enforcing
RUI="atoll_defconfig"
clear
sleep 1
echo exporting paths
export CROSS_COMPILE=$(pwd)/linaro/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=$(pwd)/gcc32/bin/arm-linux-androideabi-
export CLANG_TRIPLE=$(pwd)/clang/bin/aarch64-linux-gnu-
export CC=$(pwd)/clang/bin/clang
git clone --depth=1 https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 --single-branch -b lineage-19.0 linaro
git clone --depth=1 https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9 --single-branch -b lineage-19.0 gcc32		
git clone --depth=1 https://github.com/xiangfeidexiaohuo/Snapdragon-LLVM.git clang
export CROSS_COMPILE=$(pwd)/linaro/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=$(pwd)/gcc32/bin/arm-linux-androideabi-		
export CLANG_TRIPLE=$(pwd)/clang/bin/aarch64-linux-gnu-
export CC=$(pwd)/clang/bin/clang
clear
echo "==============================="
echo "Remove old Kernel Build if any"
echo "==============================="
rm -rf CORE/*.zip
############################################
# If other device make change here
############################################
clear
echo "==============="
echo "Building Clean"
echo "==============="
# Clean build leftovers
make clean && make mrproper
clear
echo "==================="
echo "Building Clean for "
echo "==================="
make $RUI O=out CC=clang
make -j$(nproc --all) O=out CC=clang
echo
echo "Image compiled; packing it"
sleep 3
cp -r ./out/arch/arm64/boot/Image.gz-dtb ./CORE/zImage-dtb
rm -rf CORE/*.zip
cd CORE
bash zip.sh
echo done