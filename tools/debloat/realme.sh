echo 
echo "(--------------------------------------)" 
echo  Debloater Script for NON ROOTED Users
echo  Done by @neel0210
echo "(--------------------------------------)"
adb kill-server
adb devices
sleep 7
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
echo "(--------------------------------------)"
echo                Facebook apps
echo "(--------------------------------------)"
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.facebook.katana
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.vanced.android.youtube
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.facebook.system
sleep 2
echo "(--------------------------------------)"
echo                 Google apps
echo "(--------------------------------------)"
adb shell pm uninstall -k --user 0 com.android.chrome
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.android.tts
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.apps.docs
adb shell pm uninstall -k --user 0 com.google.android.gm
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.google.android.music
adb shell pm uninstall -k --user 0 com.google.android.tts
adb shell pm uninstall -k --user 0 com.google.android.apps.maps
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.ar.lens
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall -k --user 0 com.google.android.keep
adb shell pm uninstall -k --user 0 com.os.docvault
adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.paisa.user
adb shell pm uninstall -k --user 0 com.google.android.apps.googleassistant
adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.files
adb shell pm uninstall -k --user 0 com.google.android.accessibility.soundamplifier
sleep 2
echo "(--------------------------------------)"
echo                Microsoft apps
echo "(--------------------------------------)"
adb shell pm uninstall -k --user 0 com.microsoft.office.powerpoint
adb shell pm uninstall -k --user 0 com.microsoft.office.excel
adb shell pm uninstall -k --user 0 com.microsoft.office.word
adb shell pm uninstall -k --user 0 com.microsoft.skydrive
sleep 2
echo "(----------------------------------------------------------)"
echo   Realme apps, ignore if u dont have redmi device and wait 
echo "(----------------------------------------------------------)"
adb shell pm uninstall -k --user 0 com.heytap.market
adb shell pm uninstall -k --user 0 com.coloros.calculator
adb shell pm uninstall -k --user 0 com.coloros.gamespaceui
adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.paisa.user
adb shell pm uninstall -k --user 0 com.oppo.music
adb shell pm uninstall -k --user 0 com.coloros.soundrecorder
adb shell pm uninstall -k --user 0 com.opos.cs
adb shell pm uninstall -k --user 0 com.heytap.browser
adb shell pm uninstall -k --user 0 com.heytap.music
adb shell pm uninstall -k --user 0 com.coloros.video
adb shell pm uninstall -k --user 0 com.oppo.sos
adb shell pm uninstall -k --user 0 com.heytap.usercenter
adb shell pm uninstall -k --user 0 com.heytap.cloud
adb shell pm uninstall -k --user 0 com.heytap.themestore 
adb shell pm uninstall -k --user 0 com.finshell.fin
adb shell pm uninstall -k --user 0 com.coloros.securepay
adb shell pm uninstall -k --user 0 com.coloros.backuprestore
adb shell pm uninstall -k --user 0 com.coloros.assistantscreen
adb shell pm uninstall -k --user 0 com.redteamobile.roaming
adb shell pm uninstall -k --user 0 com.coloros.compass2
adb shell pm uninstall -k --user 0 com.oppo.quicksearchbox
adb shell pm uninstall -k --user 0 com.realme.link
adb shell pm uninstall -k --user 0 com.coloros.onekeylockscreen
adb shell pm uninstall -k --user 0 com.coloros.videoeditor
adb shell pm uninstall -k --user 0 com.realmecomm.app
adb shell pm uninstall -k --user 0 com.heytap.quickgame
adb shell pm uninstall -k --user 0 com.realmestore.app
adb shell pm uninstall -k --user 0 com.heytap.pictorial
adb shell pm uninstall --user 0 com.coloros.focusmode
adb shell pm uninstall --user 0 com.coloros.calculator
adb shell pm uninstall --user 0 com.google.android.apps.googleassistant
adb shell pm uninstall --user 0 com.coloros.focusmode
adb shell pm uninstall --user 0 com.coloros.calculator
adb shell pm uninstall --user 0 com.google.soundrecorder
adb shell pm uninstall --user 0 com.nearme.atlas
adb shell pm uninstall --user 0 com.oppo.operationManual
adb shell pm uninstall -k --user 0 in.amazon.mShop.android.shopping
adb shell pm uninstall -k --user 0 com.android.fmradio
adb shell pm uninstall -k --user 0 com.coloros.childrenspace
adb shell pm uninstall -k --user 0 com.coloros.gamespaceui
sleep 2
echo Done okaythnxBye!
