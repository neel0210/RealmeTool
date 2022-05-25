#!/bin/bash
#
# Awaken Build Script for Realme 6 Pro
# By Neel0210.
#
#
######################
# Variables
device="RMX2061"
#
echo "Removing old Realme Device Trees"
rm -rf device/realme/*

echo "Syncing Awaken"
repo init -u https://github.com/Project-Awaken/android_manifest -b 12.1
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "Syncing Done"
#
echo "Triggering Build for $device"
source build/envsetup.sh
lunch awaken_$device-userdebug
make bacon -j$(nproc --all)
#
