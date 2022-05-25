#!/bin/bash
#
# Octavi Build Script for Realme 6 Pro
# By Neel0210.
#
#
######################
# Variables
device="RMX2061"
#
echo "Removing old Realme trees"
rm -rf device/realme/*

echo "Syncing Octavi"
repo init -u https://github.com/Octavi-OS/platform_manifest.git -b 12
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "Syncing Done"
#
echo "Triggering Build for $device"
source build/envsetup.sh
lunch octavi_$device-userdebug
brunch octavi_RMX2061-userdebug
#
