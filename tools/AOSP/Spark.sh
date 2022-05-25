#!/bin/bash
#
# Spark Build Script for Realme 6 Pro
# By Neel0210.
#
#
######################
# Variables
device="RMX2061"
#
echo "Removing old Realme trees"
rm -rf device/realme/*

echo "Syncing Spark"
repo init -u https://github.com/Spark-Rom/manifest -b spark
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "Syncing Done"
#
echo "Triggering Build for $device"
source build/envsetup.sh
lunch spark_$device-userdebug
mka bacon -j$(nproc --all)
#
