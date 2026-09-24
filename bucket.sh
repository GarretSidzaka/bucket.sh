#!/bin/bash
#BUCKET.SH
#DISCLAIMER: CANNOT BE HELD LIABLE FOR YOU RUNNING THIS ON YOUR DEVICE AND BRICKING IT.
#MORE DISCLAIMER: IF YOU THINK THIS SCRIPT MAKES ANDROID SECURE FOR YOU TO DO ILLEGAL THINGS, THINK AGAIN.
#THIS SCRIPT DOES NOT REMOVE CORE DEPENDANCIES AND YOU WOULD LIKELY BE TRACKED VIA THOSE.
#MOREOVER:
#MUST HAVE android-tools OR WHATEVER IT IS THAT GIVES YOU ADB
#RUN BUCKET.TXT AS A LINUX SH EXECUTABLE
target_package_list=(
com.google.android.apps.youtube.kids
com.google.android.calendar
com.google.android.contacts
com.google.android.keep
com.google.android.apps.books
com.google.android.play.games
com.google.android.deskclock
com.google.android.inputmethod.latin
com.android.calculator2
com.android.camera2
com.android.soundrecorder
com.android.soundpicker
com.android.musicfx
com.android.htmlviewer
com.google.android.printservice.recommendation
com.google.android.apps.kids.home
com.android.vending
com.google.android.health.connect.backuprestore
com.google.android.healthconnect.controller
com.google.android.apps.wellbeing
com.google.android.apps.safetyhub
#ALLWINNER SPECIFIC PACKAGES
com.dajingtech.update
com.softwinner.update
com.softwinner.android.gmsintegration
com.softwinner.awlogsettings
com.softwinner.awsysteminfo
com.clock.pt1.keeptesting
com.djgd.testmode
com.softwinner.runin.res
com.softwinner.runin
com.softwinner.dragonatt
com.djgd.pdf
com.softwinner.videoplayer
com.softwinner.screenshot
com.softwinner.qrscanner
com.softwinner.timerswitch
#BACKAGES FROM DEBLOAT SCRIPT https://gist.github.com/heywoodlh/12195025d8bfc4d4dc8cb0a1dfec4df1
com.motorola.android.fmradio
com.motorola.fmplayer
com.motorola.genie
com.motorola.moto
com.motorola.launcher3
com.motorola.gamemode
com.motorola.demo
com.motorola.help
com.motorola.paks
com.motorola.screenshoteditor
com.motorola.hiddenmenuapp
com.motorola.demo.env
com.motorola.appforecast
com.lmi.motorola.rescuesecurity
com.motorola.bug2go
com.motorola.motocare.internal
com.motorola.motocare
com.motorola.android.nativedropboxagent
com.motorola.brapps
com.motorola.easyprefix
com.facebook.katana
com.facebook.appmanager
com.facebook.services
com.facebook.system
com.android.chrome
com.android.hotwordenrollment.google
com.google.android.apps.docs
com.google.android.apps.googleassistant
com.google.android.apps.magazines
com.google.android.apps.maps
com.google.android.apps.photos
com.google.android.apps.podcasts
com.google.android.apps.subscriptions.red
com.google.android.apps.tachyon
com.google.android.apps.walletnfcrel
com.google.android.googlequicksearchbox
com.google.android.gm
com.google.android.setupwizard
com.google.android.videos
com.google.android.youtube
org.mipay.android.manager
com.google.android.apps.youtube.music
com.android.egg
com.android.providers.partnerbookmarks
com.android.bookmarkprovider
com.kwai.kuaishou.video.live
com.netflix.mediaclient
com.tencent.igxiaomi
com.spotify.music
cn.wps.xiaomi.abroad.lite
wps.moffice_eng
cn.wps.moffice_eng
com.android.stk
com.csdroid.spkg
com.zhiliaoapp.musically
com.king.candycrushsaga
com.miui.securitycenter
com.miui.guardprovider
com.miui.securitycore
com.miui.cleaner
com.samsung.knox.appsupdateagent
com.sec.knox.foldercontainer
com.sec.knox.knoxsetupwizardclient
com.sec.knox.kss
com.sec.knox.switcher
com.samsung.knox.securefolder
com.samsung.knox.securefolder.setuppage
com.miui.fm
com.miui.fmservice
com.android.thememanager
com.miui.player
com.xiaomi.micloud.sdk
com.miui.micloudsync
com.miui.cloudbackup
com.miui.cloudservice
com.xiaomi.payment4
com.xiaomi.account
com.xiaomi.midrop
com.vcast.mediamanager
asurion.android.verizon.vms
com.motricity.verizon.ssodownloadable
com.vzw.hss.myverizon
vzw.hss.myverizon
com.vzw.hs.android.modlite
motricity.verizon.ssodownloadable
us.com.dt.iq.appsource.tmobile
com.mobitv.client.tmobiletvhd
com.tmobile.pr.mytmobile
com.tmobile.m1
com.tmobile.pr.adapt
com.tmobile.rsuadapter.qualcomm
com.tmobile.rsuapp
com.tmobile.rsusrv
att.dh
att.dtv.shaderemote
att.tv
att.myWireless
asurion.android.protech.att
att.android.attsmartwifi
com.att.thanks
com.att.mobilesecurity
com.att.callprotect
com.att.iqi
com.dti.att
com.sprint.ms.cdm
com.sprint.ms.smf.services
com.sprint.ce.updater
com.sprint.w.installer
)
command -v adb || {
echo "adb not installed"
exit 1
}
if [ "$1" == "-d" ]; then
   echo "DEBUG MODE"
   sleep 1
   echo "============================"
   echo "BEFORE:"
   echo ""
   sleep 1
   adb shell pm list packages
   sleep 1
fi
for i in "${target_package_list[@]}"; do
echo -e "EXECUTING: adb shell pm uninstall -k --user 0 $i \nOUTPUT:"
adb shell pm uninstall -k --user 0 "$i"
sleep 3
done

# Remove vendor bloat
for pkg in $(adb shell pm list packages | grep -iE 'com.motorola|com.facebook|com.tmobile|com.dish|android.apps|linkedin|snapchat|tiktok|com.aura|\.installer$|com.metro|in.playsimple|metropcs|com.android.chrome|com.ironsrc|com.amazon.appmanager|com.particlenews|com.swish|youtube|com.tripledot|com.vivo|com.thehomedepot|.folder|com.booking' | grep -viE 'com.motorola.android.providers.settings|faceunlock' | cut -d':' -f2)
do
    echo "Uninstalling: $pkg"
    adb shell pm uninstall -k --user 0 $pkg
done
sleep 3
#SOFTWARE INSTALLS
    echo 'Installing F-Droid.'
    curl -o /tmp/F-Droid.apk https://f-droid.org/F-Droid.apk
    adb install /tmp/F-Droid.apk
    echo 'Installing unlauncher.'
    curl -o /tmp/unlauncher.apk https://f-droid.org/repo/com.jkuester.unlauncher_18.apk
    adb install /tmp/unlauncher.apk
    echo 'Installing Foss keyboard.'
    curl -o /tmp/fosskeyboard.apk https://github.com/FossifyOrg/Keyboard/releases/download/1.9.1/keyboard-14-foss-release.apk
    adb install /tmp/fosskeyboard.apk






   echo "============================"
   echo "AFTER:"
   echo ""
   adb shell pm list packages
read -p "Press enter to reboot target android device, or Control-C to end script now without reboot."
echo "Rebooting android device in 5 seconds"
sleep 5
adb shell reboot
exit 0
