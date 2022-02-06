echo 
echo "(--------------------------------------------)" 
echo   Custom Debloater Script for NON ROOTED Users
echo   Done by @neel0210
echo "(--------------------------------------------)"
adb kill-server
adb devices
sleep 3
echo -e
echo ##############################################
echo # Note : it will show you error if you dont- #
echo # have that app installed, so ignore it      #
echo ##############################################
sleep 5
echo -e Removing below mentioned services/apps
echo 
######################################################
#  To uninstall user apps : pm uninstall -k --user 0 --user 0 #
#  To disable them : pm disable-user --user 0        #
######################################################
echo -e adb shell pm uninstall -k --user 0 --user 0 #packagename here just like given below
echo -e for example
echo -e adb shell pm uninstall -k --user 0 --user 0 com.google.realme.bloat
echo -e start from below

# Custom debloat script | remove # before processing further | Just add package name

#echo -e adb shell pm uninstall -k --user 0 --user 0 
#echo -e adb shell pm uninstall -k --user 0 --user 0 
#echo -e adb shell pm uninstall -k --user 0 --user 0 
#echo -e adb shell pm uninstall -k --user 0 --user 0 
#echo -e adb shell pm uninstall -k --user 0 --user 0 
#echo -e adb shell pm uninstall -k --user 0 --user 0 
#echo -e adb shell pm uninstall -k --user 0 --user 0 
#echo -e adb shell pm uninstall -k --user 0 --user 0 