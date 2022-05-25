#!/bin/bash
#
# Elixer Build Script for Realme 6 Pro
# By Neel0210.
#
#
######################
# Variables
device="RMX2061"
#
echo "Removing old Realme trees"
rm -rf device/realme/*

echo "Syncing Elixer"
repo init -u https://github.com/Project-Elixir/manifest -b snow
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "Syncing Done"
#
echo "Triggering Build for $device"
source build/envsetup.sh
lunch aosp_$device-userdebug
make bacon -j$(nproc --all)
#