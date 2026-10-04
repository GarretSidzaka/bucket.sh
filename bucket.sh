#!/bin/bash
#BUCKET.SH
#DISCLAIMER: CANNOT BE HELD LIABLE FOR YOU RUNNING THIS ON YOUR DEVICE AND BRICKING IT.
#MORE DISCLAIMER: IF YOU THINK THIS SCRIPT MAKES ANDROID TRACKING DISABLED, I STRONGLY DOUBT IT.
#MOREOVER:
#MUST HAVE android-tools OR WHATEVER IT IS THAT GIVES YOU ADB
#RUN WITH --skip-expanded AS AN ARUGUMENT FOR TRULY BARE MINIMAL ANDROID EXPERIENCE.
target_package_list=(
#PACKAGES FROM https://xdaforums.com/t/guide-list-of-bloatware-on-emui-safe-to-remove.3700814/ AND MORE
com.google.android.apps.books
com.google.android.apps.cloudprint
com.google.android.apps.currents
com.google.android.apps.docs
com.google.android.apps.fitness
com.google.android.apps.mapps
com.google.android.apps.photos
com.google.android.apps.plus
com.google.android.apps.restore
com.google.android.apps.tachyon
com.google.android.apps.youtube.kids
com.google.android.calendar
com.google.marvin.talkback
com.google.android.onetimeinitializer
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
com.google.android.feedback
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
com.google.ar.core
com.google.android.videos
com.google.tango.measure
com.google.android.talk
com.android.hotwordenrollment.google
com.google.android.apps.docs
com.google.android.apps.googleassistant
com.google.android.apps.magazines
com.google.android.apps.maps
com.google.android.apps.photos
com.google.android.streeT
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

for i in "${target_package_list[@]}"; do
echo -e "EXECUTING: adb shell pm uninstall -k --user 0 $i \nOUTPUT:"
adb shell pm uninstall -k --user 0 "$i"
sleep 3
done

# Remove vendor bloat
for pkg in $(adb shell pm list packages | grep -iE 'com.motorola|facebook|com.facebook|com.tmobile|com.dish|android.apps|linkedin|snapchat|tiktok|com.aura|\.installer$|com.metro|in.playsimple|metropcs|com.android.chrome|com.ironsrc|amazon|twitter|com.particlenews|com.swish|youtube|netflix|com.tripledot|com.vivo|lowes|com.thehomedepot|.folder|com.booking' | grep -viE 'com.motorola.android.providers.settings|faceunlock' | cut -d':' -f2)
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
    curl -o /tmp/fosskeyboard.apk https://f-droid.org/repo/org.fossify.keyboard_14.apk
    adb install /tmp/fosskeyboard.apk
    echo 'Installing Waterfox Browser.'
    waterfoxversion="$(curl -s https://api.github.com/repos/BrowserWorks/waterfox-android/releases/latest | grep browser_download_url | cut -d '"' -f 4 | grep arm64 | cut -d '/' -f 8)"
    curl -L -o /tmp/waterfox.apk https://github.com/BrowserWorks/waterfox-android/releases/download/"${waterfoxversion}"/fenix-waterfox-arm64-v8a-release.apk
    adp install /tmp/waterfox.apk

if [$1 -eq "--skip-expanded"]; then
echo "Skipping expanded Installation"
else
    #hardlinked latest version
    echo 'Installing Servo Browser.'
    curl -L -o /tmp/servo.apk https://download.servo.org/nightly/android/servo-aarch64-android.apk
    adb install /tmp/servo.apk 
    
    #github newest version
    echo 'Installing Redreader'
    redreaderversion="$(curl -s https://api.github.com/repos/QuantumBadger/RedReader/releases/latest | grep browser_download_url | cut -d '"' -f 4 | cut -d '/' -f 8)"
    curl -L -o /tmp/redreader.apk https://github.com/QuantumBadger/RedReader/releases/download/"${redreaderversion}"/RedReader-"${redreaderversion}".apk
    adb install /tmp/redreader.apk

    #repo hardlink
    echo 'Installing Aurora Store'
    curl -L -o /tmp/aurora.apk https://f-droid.org/repo/com.aurora.store_76.apk 
    adb install /tmp/aurora.apk
    echo 'Aegis Authenticator'
    curl -L -o /tmp/aegis_82.apk https://f-droid.org/repo/com.beemdevelopment.aegis_82.apk 
    adb install /tmp/aegis_82.apk 
    echo 'Breezy Weather'
    curl -L -o /tmp/breezyweather_60202.apk https://f-droid.org/repo/org.breezyweather_60202.apk 
    adb install /tmp/breezyweather_60202.apk
    echo 'DavX Calendar'
    curl -L -o /tmp/davdroid_405200005.apk https://f-droid.org/repo/at.bitfire.davdroid_405200005.apk 
    adb install /tmp/davdroid_405200005.apk
    echo 'Monocles Mail'
    curl -L -o /tmp/mail_12.apk https://f-droid.org/repo/de.monocles.mail_12.apk 
    adb install /tmp/mail_12.apk 
    echo 'IzzyonDroid Repo'
    curl -L -o /tmp/izzyondroid_14.apk https://apt.izzysoft.de/fdroid/repo/in.sunilpaulmathew.izzyondroid_14.apk 
    adb install /tmp/izzyondroid_14.apk 
    echo 'Areada Reader'
    curl -L -o /tmp/areada_15.apk https://f-droid.org/repo/app.areada_15.apk 
    adb install /tmp/areada_15.apk
    echo 'Fluffychat Matrix'
    curl -L -o /tmp/fluffychat_3566.apk https://f-droid.org/repo/chat.fluffy.fluffychat_3566.apk 
    adb install /tmp/fluffychat_3566.apk
    echo 'GhostCommander Files'
    curl -L -o /tmp/commander_479.apk https://f-droid.org/repo/com.ghostsq.commander_479.apk 
    adb install /tmp/commander_479.apk
    echo 'Krita Art'
    curl -L -o /tmp/krita_5011804.apk https://f-droid.org/repo/org.krita_5011804.apk 
    adb install /tmp/krita_5011804.apk
    echo 'VLC Player'
    curl -L -o /tmp/vlc_13070108.apk https://f-droid.org/repo/org.videolan.vlc_13070108.apk 
    adb install /tmp/vlc_13070108.apk 
    echo 'Spamblocker Caller'
    curl -L -o /tmp/spamblocker_614.apk https://f-droid.org/repo/dev.kerballone.spamblocker_614.apk 
    adb install /tmp/spamblocker_614.apk
    echo 'Voice Audiobooks'
    curl -L -o /tmp/audiobook_5406001.apk https://f-droid.org/repo/de.ph1b.audiobook_5406001.apk 
    adb install /tmp/audiobook_5406001.apk 
    echo 'Wikipedia'
    curl -L -o /tmp/wikipedia_50606.apk https://f-droid.org/repo/org.wikipedia_50606.apk 
    adb install /tmp/wikipedia_50606.apk
    echo 'New Pipe'
    curl -L -o /tmp/newpipe_1015_cb84069.apk https://f-droid.org/repo/org.schabi.newpipe_1015_cb84069.apk 
    adb install /tmp/newpipe_1015_cb84069.apk 
    echo 'Fedilab'
    curl -L -o /tmp/mastodon_570.apk https://f-droid.org/repo/fr.gouv.etalab.mastodon_570.apk 
    adb install /tmp/mastodon_570.apk 
    echo 'RadioDroid'
    curl -L -o /tmp/radiodroid2_96.apk https://f-droid.org/repo/net.programmierecke.radiodroid2_96.apk 
    adb install /tmp/radiodroid2_96.apk
    echo 'Sky Map'
    curl -L -o /tmp/stardroid_1751.apk https://f-droid.org/repo/com.google.android.stardroid_1751.apk 
    adb install /tmp/stardroid_1751.apk 
    echo 'Fossify Messages'
    curl -L -o /tmp/messages_23.apk https://f-droid.org/repo/org.fossify.messages_23.apk 
    adb install /tmp/messages_23.apk
    echo 'Fossify Gallery'
    curl -L -o /tmp/gallery_28.apk https://f-droid.org/repo/org.fossify.gallery_28.apk 
    adb install /tmp/gallery_28.apk
    echo 'Fossify Contacts'
    curl -L -o /tmp/contacts_13.apk https://f-droid.org/repo/org.fossify.contacts_13.apk 
    adb install /tmp/contacts_13.apk 
    echo 'Fossify Camera'
    curl -L -o /tmp/camera_11.apk https://f-droid.org/repo/org.fossify.camera_11.apk 
    adb install /tmp/camera_11.apk 
    echo 'Heliboard Keyboard'
    curl -L -o /tmp/keyboard_4101.apk https://f-droid.org/repo/helium314.keyboard_4101.apk 
    adb install /tmp/keyboard_4101.apk
    echo 'Anthology Reader'
    curl -L -o /tmp/anthology_10008.apk https://apt.izzysoft.de/fdroid/repo/systems.nik.anthology_10008.apk 
    adb install /tmp/anthology_10008.apk 
    echo 'Compressor'
    curl -L -o /tmp/us_27.apk https://apt.izzysoft.de/fdroid/repo/compress.joshattic.us_27.apk 
    adb install /tmp/us_27.apk 
fi

    
read -p "Press enter to reboot target android device, or Control-C to end script now without reboot."
echo "Rebooting android device in 5 seconds"
sleep 5
adb shell reboot
exit 0
