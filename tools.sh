#!/bin/bash
#
#
# export variables here
home=$(pwd)
platform="tools/platform-tools"
custom="tools/debloat/custom.sh"
apk=$(find tools/apk/*.apk)
zip=$(find tools/zip/*.zip)
magisk=$(find tools/magisk/*.zip)
fw=$(find tools/extract/*.zip)
hey="ffu_tool"
#
# Script
clear
echo "                                                     "
echo "             _     _                     _       _   "
echo "  _ __  _ __(_)___| |__    ___  ___ _ __(_)_ __ | |_ "                                              
echo " | '_ \| '__| / __| '_ \  / __|/ __| '__| | '_ \| __|"                                              
echo " | |_) | |  | \__ \ | | | \__ \ (__| |  | | |_) | |_ "                                              
echo " | .__/|_|  |_|___/_| |_| |___/\___|_|  |_| .__/ \__|"
echo " |_|                                      |_|        "
echo "                                                     "
echo " Realme Utility Script                               "
echo "                       coded by Neel0210             "
echo "                                                     "
echo "Select"
echo "1 = Check adb connection"
echo "2 = Boot to fastboot or recovery"
echo "3 = Debloat"
echo "4 = Install an APK"
echo "5 = Flash zip in recovery"
echo "6 = Install Magisk v24"
echo "7 = Install recovery"
echo "8 = Extract RUI Fimrware"
echo "10 = exit"
read n
# Here we go
if [ $n -eq 1 ]; then
	echo -e
	echo Checking adb device if present
	echo -e
	echo -----------------------
	adb devices
	echo ----------------------
	echo -e "Press Any key to get back to script"
    read -n1 -r key
	bash realme.sh
fi
# 2nd
if [ $n -eq 2 ]; then
		clear
	echo --------------------
	echo      Boot menu
	echo --------------------
	echo -e "Want to boot in fastboot or recovery?"
	sleep 2
	echo "1 = Reboot to Bootloader"
	echo "2 = Reboot to recovery"
	read n
	if [ $n -eq 1 ]; then
		echo -e
		adb kill-server
		adb devices
		adb reboot bootloader
		sleep 10
		fastboot devices
		echo Booted into fastboot
	fi
	if [ $n -eq 2 ]; then
		echo -e
		adb kill-server
		adb devices		
		adb reboot recovery
		sleep 10
		adb devices
		echo Booted to recovery
	fi
	echo "running script again"
	sleep 2
	bash realme.sh
fi
# 3rd
if [ $n -eq 3 ]; then
	clear
	echo -e
	echo --------------------
	echo      Debloat
	echo --------------------
	echo -e "Want do you wanna debloat?"
	sleep 2
	echo "1 = RealmeUI 1-2"
	echo "2 = Google Bloat (Mostly all)"
	echo "3 = Custom bloat (Add your own apps list)"
	read n
	if [ $n -eq 1 ]; then
		echo -e
		echo --------------------
		echo      RealmeUI
		echo --------------------
		echo -e You choose Realme to be debloated
 		echo 
	    echo "Press Any key to start debloatation"
        read -n1 -r key
        echo -e Now sit back and relax
        sleep 3
        bash tools/debloat/realme.sh
		echo done
	fi
	if [ $n -eq 2 ]; then
		echo -e
		echo --------------------
		echo      Gapps
		echo --------------------
		echo -e "You choose Google apps to be debloated"
 		echo 
	    echo "Press Any key to start debloatation"
        read -n1 -r key
        echo -e Now sit back and relax
        sleep 3
        bash tools/debloat/gapps.sh
		echo done
	fi
	if [ $n -eq 3 ]; then
		echo -e
		echo --------------------
		echo       Custom
		echo --------------------
		echo "# You choose Custom script to debloat apps"
		echo "# Few things to keep in mind"
		echo "# You need to edit script on your own it easy AF, Just read this carefully"
		echo -e "1 Go to tools/debloat/ and make a copy of temp_custom.sh and rename it to custom.sh"
		echo "2 open it with any text editor app and add your app's package name and make a whole list like that"
		echo "3 save it and get back here"
		echo
		echo "                         Once done then press Any key to run your own custom script"
        read -n1 -r key
        echo -e "checking if file is there"
        sleep 4
        echo -e
       		if [ -f "$custom" ]; then
       			echo -----------------------------------------------------
				echo         "Custom.sh IS THERE; thus starting"
       			echo -----------------------------------------------------				
				sleep 4
				bash tools/debloat/custom.sh
			else
       			echo -----------------------------------------------------				
				echo    "Custom.sh is NOT THERE; follow steps properly"
       			echo -----------------------------------------------------				
				sleep 4
			fi
	fi
	echo "running script again"
	sleep 2
	bash realme.sh
fi
# 4th
if [ $n -eq 4 ]; then
	echo -e
	echo ---------------------------
	echo      Installing an APK
	echo ---------------------------
	echo -e
	echo "#  Disclaimer"
	echo "#"
	echo "# Put your APKs in tools/apk/ Folder"
	echo "#"
	echo -e
	echo -e "                   If done press ANY KEY to get going"
	read -n1 -r key
	echo -e Searching for available APKs
	echo -e
	echo -e "Found APKs: $apk"
	echo -e 
	echo "running script again"
	sleep 2
	bash realme.sh
fi
# 5th
if [ $n -eq 5 ]; then
	echo -e
	echo ---------------------------
	echo      Flashing zip
	echo ---------------------------
	echo -e
	echo "#  Disclaimer"
	echo "#"
	echo "# Make sure you have USB debugging on"
	echo "#"
	echo "# Keep one zip only"
	echo -e
	echo -e "                   If done press ANY KEY to get going"
	read -n1 -r key
	echo -e Searching for available zip
	echo -e
	echo -e "Found APKs: $zip"
	echo -e 
	echo "Checking ADB"
	echo ""
	adb devices
	adb reboot recovery
	echo "Turn adb sideload on | Once done press ANY KEY"
	read -n1 -r key
	adb sideload $zip
	echo "done flashing | now reboot to system"
	sleep 5
	echo "running script again"
	sleep 2
	bash realme.sh
fi
# 6th
if [ $n -eq 6 ]; then
	echo -e
	echo ---------------------------
	echo      Flashing Magisk
	echo ---------------------------
	echo -e
	echo "#  Disclaimer"
	echo "#"
	echo "# Make sure you have USB debugging on"
	echo "#"
	echo -e
	echo -e "                   If done press ANY KEY to get going"
	read -n1 -r key
	echo -e Searching for Magisk zip
	echo -e
	if [ -f "$magisk" ]; then
		echo -----------------------------------------------------
		echo         "Magisk IS THERE; thus installing"
		echo -----------------------------------------------------				
		sleep 4
		adb devices
		adb reboot recovery
		echo -e " Start Sideload  | If done press ANY KEY to get going"
		read -n1 -r key		
		adb sideload $magisk
		echo "done flashing | now reboot to system"
	else
		echo ------------------------------------------------------------			
		echo    "Magisk is NOT THERE; Check for zip file in Tools/magisk"
		echo ------------------------------------------------------------		
		sleep 4
	fi
	sleep 5
	echo "running script again"
	sleep 2
	bash realme.sh			
fi
#7th
if [ $n -eq 7 ]; then
clear
	echo --------------------
	echo    Recovery Menu
	echo --------------------
	echo -e "Which recovery do you wanna Install?   | All for A11"
	sleep 2
	echo "1 = TWRP"
	echo "2 = OFOX"
	echo "3 = SHRP"
	echo "4 = Reboot to recovery"
	read n
	if [ $n -eq 1 ]; then
		echo -e
		echo Flashing TWRP by @Ctapchuk
		sleep 3
			echo "You must be in bootloader"
			echo "If youre not then boot to Bootloader"
			echo "and check below if youre able to see your device"
			echo "in fastboot devices | If yes then only press ANY KEY to continue"
		fastboot devices
		read -n1 -r key
		cd tools/recoveries
		tar -xf twrp.img.tar.xz
		fastboot flash recovery twrp.img
		echo flashed
		echo -e
		fastboot reboot recovery
		cd $home	
	fi
	if [ $n -eq 2 ]; then
		echo -e
		echo Flashing OFOX by @Ctapchuk
		sleep 3
			echo "You must be in bootloader"
			echo "If youre not then boot to Bootloader"
			echo "and check below if youre able to see your device"
			echo "in fastboot devices | If yes then only press ANY KEY to continue"
		fastboot devices
		read -n1 -r key
		cd tools/recoveries
		tar -xf ofox.img.tar.xz
		fastboot flash recovery ofox.img
		echo flashed
		echo -e
		fastboot reboot recovery
		cd $home
	fi
	if [ $n -eq 3 ]; then
		echo -e
		echo Flashing SHRP by @Ctapchuk
		sleep 3
		fastboot flash recovery shrp.img
			echo "You must be in bootloader"
			echo "If youre not then boot to Bootloader"
			echo "and check below if youre able to see your device"
			echo "in fastboot devices | If yes then only press ANY KEY to continue"
		fastboot devices
		read -n1 -r key
		cd tools/recoveries
		tar -xf shrp.img.tar.xz
		fastboot flash recovery shrp.img
		echo flashed
		echo -e
		fastboot reboot recovery
		cd $home
	fi
	if [ $n -eq 4 ]; then
		echo -e
		echo -e Rebooting to recovery in
		echo 5.....
		sleep 1
		echo 4....
		sleep 1
		echo 3...
		sleep 1
		echo 2
		sleep 1
		echo 1
		echo -e rebooting
		fastboot reboot recovery
		echo done
	fi		
	echo "running script again"
	sleep 2
	bash realme.sh
fi
#8
if [ $n -eq 8 ]; then
	echo -e
	echo --------------------
	echo  Extracting RUI FW
	echo --------------------
	sleep 3
	clear
	echo "#################################################"
	echo "#"
	echo "# Disclaimer"
	echo "#"
	echo "# Keep your RealmeUI.zip at tools/extract"
	echo "#"
	echo "# If done moving zip press ANY KEY to get going"
	echo "#"
	echo "##################################################"
	read -n1 -r key
	echo -e Searching for RealmeUI Firmware to unpack
	if [ -f "$fw" ]; then
		echo -e
		echo         "ZIP IS THERE; thus extarcing"
		sleep 4
		unzip $fw -d RUI && cd RUI
		if [ -f "$hey" ]; then
			echo -e "my_heytap is there | RealmeUI confirm"
		else
			echo -e "my_heytap partition isn't there | Put RUI FW only"
		fi
	fi
fi
#10th
if [ $n -eq 10 ]; then
	echo -e
	echo --------------------
	echo  Exiting...
	echo --------------------
	sleep 3
	exit
fi




