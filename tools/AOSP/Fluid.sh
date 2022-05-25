#!/bin/bash
#
# Fluid Build Script for Realme 6 Pro
# By Neel0210.
#
#
######################
# Variables
device="RMX2061"
#
echo "Removing old Realme device trees"
rm -rf device/realme/*

echo "Syncing Fluid"
repo init -u https://github.com/Project-Fluid/manifest.git -b fluid-12.1
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "Syncing Done"
#
echo "Triggering Build for $device"
source build/envsetup.sh
lunch fluid_$device-userdebug
mka bacon -j$(nproc --all)
#