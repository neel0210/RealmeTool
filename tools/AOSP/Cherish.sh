#!/bin/bash
#
# Cherish Build Script for Realme 6 Pro
# By Neel0210.
#
#
######################
# Variables
device="RMX2061"
#
echo "Removing old Realme trees"
rm -rf device/realme/*

echo "Syncing Cherish"
repo init -u https://github.com/CherishOS/android_manifest.git -b twelve-one
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "Syncing Done"
#
echo "Triggering Build for $device"
source build/envsetup.sh
brunch cherish_$device-userdebug
#