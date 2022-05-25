#!bin/bash
#
#
#
#
#
#
#############################
# vendor tree
echo " Syncing Vendor Tree"
git clone https://github.com/Realme-6-pro/vendor_realme.git vendor/realme

# kernel tree
echo " Syncing Kernel Tree"
git clone --depth=1 https://github.com/Realme-6-pro/kernel_realme_atoll_oss.git kernel/realme/atoll

# Hardware tree
echo " Syncing Kernel Tree"
if [ ! -d "$(pwd)/hardware/xiaomi/" ]; then
	rm -rf hardware/xiaomi/
	git clone https://github.com/Realme-6-pro/hardware_xiaomi.git hardware/xiaomi
else
	git clone https://github.com/Realme-6-pro/hardware_xiaomi.git hardware/xiaomi
fi

source build/env*sh
echo "Fireing up, build environment"
#