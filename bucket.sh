#!/usr/bin/env bash
#BUCKET.SH
#DISCLAIMER: CANNOT BE HELD LIABLE FOR YOU RUNNING THIS ON YOUR DEVICE AND BRICKING IT.
#MORE DISCLAIMER: IF YOU THINK THIS SCRIPT MAKES ANDROID TRACKING DISABLED, I STRONGLY DOUBT IT.
#MOREOVER:
#MUST HAVE android-tools OR WHATEVER IT IS THAT GIVES YOU ADB
#RUN WITH --skip-expanded AS AN ARGUMENT FOR TRULY BARE MINIMAL ANDROID EXPERIENCE.  
#YOU CAN USE --skip-pruning TO NOT ACTUALLY DELETE STUFF, FOR WHATEVER REASON

target_package_list=(
PACKAGES FROM https://xdaforums.com/t/guide-list-of-bloatware-on-emui-safe-to-remove.3700814/ AND MORE
#com.google.android.gms.location.history
#com.google.android.gms.supervision
#com.google.android.apps.messaging
#com.google.android.googlequicksearchbox
com.google.android.apps.docs
com.google.android.apps.googleassistant
com.google.android.apps.magazines
com.google.android.apps.maps
com.google.android.apps.photos
com.google.android.street
com.google.android.apps.podcasts
com.google.android.apps.subscriptions.red
com.google.android.apps.tachyon
com.google.android.apps.walletnfcrel
com.google.android.apps.books
com.google.android.apps.cloudprint
com.google.android.apps.currents
com.google.android.apps.fitness
com.google.android.apps.mapps
com.google.android.apps.plus
com.google.android.apps.restore
com.google.android.apps.youtube.kids
com.google.android.apps.nbu.files
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
com.lmi.motorola.rescuesecurity
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
#MORE BLOATWARE
cci.usage
com.block.juggle
com.att.csoiam.mobilekey
com.att.dh
com.att.iqi
com.att.mobile.android.vvm
com.att.personalcloud
com.cricketwireless.minus
com.cricketwireless.thescoop
com.digitalturbine.android.apps.news.uscellular
com.handmark.expressweather
com.inmobi.weather
com.metropcs.metrozone
com.mizmowireless.acctmgt
com.oem.euiccpartnerapp 
com.oem.euiccpartnerapp.overlay.att
com.oem.euiccpartnerapp.overlay.vzw
com.oem.euiccpartnerapp.overlay.na
com.oem.euiccpartnerapp.overlay.retca
com.oem.euiccpartnerapp.overlay.tmo
com.oem.euiccpartnerapp.overlay.cc
com.oem.euiccpartnerapp.overlay.br
com.spectrum.cm.headless
com.swishme.tracfone
#com.tmobile.dm.cm
#com.tmobile.dm.ms.services
#com.tmobile.echolocate
#com.tmobile.echolocate.system
#com.tmobile.m1
#com.tmobile.pr.adapt
#com.tmobile.rsusrv 
#com.tmobile.rsuapp 
#com.tmobile.rsuadapter.aidl
com.tracfone.generic.mysites
com.tracfone.preload.accountservices
com.uscc.ecid
com.verizon.mips.services
com.verizon.remoteSimlock
com.vcast.mediamanager
com.vzw.apnlib
com.vzw.ecid
com.vzw.hss.myverizon
securityandprivacy.android.verizon.vms
com.ironsrc.aura.tmo
com.trustonic.alpsservice
com.trustonic.teeservice
com.aura.jet.att 
com.aura.oobe.motorola
com.aura.oobe.solutions
##MOTOROLLA DENY LIST
#com.motorola.help
#com.motorola.moto
#com.motorola.motocare
com.motorola.android.fmradio
com.motorola.motocameradesktop
#com.motorola.spaces
#com.motorola.account
com.motorola.aiservices
com.motorola.android.buacloudcontactadapter
#com.motorola.android.contacts.overlay.vzw
com.motorola.contacts.preloadcontacts.overlay.vzw
com.motorola.android.nativedropboxagent
com.motorola.android.provisioning
com.motorola.android.providers.chromehomepage
com.motorola.appforecast
com.motorola.audiorecorder
com.motorola.camera3.content.ai
com.motorola.bug2go
com.motorola.ccc.ota
com.motorola.comcast.settings.extensions
com.motorola.default.ringtones.overlay.tmo.usku
com.motorola.default.ringtones.overlay.metro.usku
com.motorola.demo
com.motorola.dolby.dolbyui
com.motorola.dynamicvolume
com.motorola.faceunlock
com.motorola.gamemode
com.motorola.genie
com.motorola.livewallpaper3
com.motorola.mobiledesktop
com.motorola.mobiledesktop.core
#com.motorola.motocit
#com.motorola.motosecurecore
#com.motorola.motosignature.app
#com.motorola.motosignature2.app
#com.motorola.nfwlocationattribution
#com.motorola.om
com.motorola.omadm.att
com.motorola.omadm.service 
com.motorola.omadm.vzw
#com.motorola.paks
#com.motorola.paks.notification
com.motorola.personalize
com.motorola.playautoinstallext
#com.motorola.setup
com.motorola.setupwizard.devicesetup
com.motorola.setupwizard.controller
com.motorola.setupwizard.phoneservice
com.motorola.setupwizard.devicesetup
com.motorola.smartfeed
com.motorola.spectrum.setup.extensions
com.motorola.timeweatherwidget
#com.motorola.visualvoicemail
#com.motorola.wifi.motowifimetrics
#VERIZON APPS - MIGHT NEED TO KEEP IF YOU USE THEM
com.motorola.vzw.cloudsetup
com.motorola.vzw.phone.extensions
com.motorola.vzw.settings.extensions
com.motorola.vzw.voicemail.extensions
com.motorola.vzw.pco.extensions.pcoreceiver 
com.motorola.vzw.voicemail.extensions
#TMOBILE APPS BLACKLIST
#com.motorola.tmo.setupext
#com.motorola.tmo.settingsext
com.tmobile.tuesdays
#OTHER CARRIERS
com.motorola.tracfone.rsu
#EMAIL YOUR DISGUSTING BUCKET OF KNOWN BAD PACKAGES TO GARRETSIDZAKA@PROTON.ME
)
command -v adb || {
echo "adb not installed"
exit 1
}

echo 'creating list of pre-installed packages'
   adb shell pm list packages | tee ./packages.txt
echo "=========================================================================="
printf "WaRnInG: tHiS mIgHt BrEaK yOuR dEvIcE iF yOu DoN\'t KnOw WhAt YoUr DoInG!!"
echo ""
read -rp "Press enter bucket the hell out of your android, or Control-C to end script now."

if [ "$1" = "--skip-pruning" ]; then
echo "Skipping app pruning completely!"
else
echo "Remove vendor bloat"
for i in "${target_package_list[@]}"; do
echo -e "EXECUTING: adb shell pm uninstall -k --user 0 $i \nOUTPUT:"
adb shell pm uninstall -k --user 0 "$i"
done
remaining=$(adb shell pm list packages | grep -iE 'instagram|playsimple|candycrush|temu|doordash|facebook|mahjong|adfone|meta|glance|dish|linkedin|snapchat|tiktok|com.aura|in.playsimple|com.ironsrc|amazon|twitter|com.particlenews|com.swish|youtube|netflix|com.tripledot|com.vivo|lowes|homedepot|booking|huub' | grep -viE 'com.motorola|faceunlock|android' |  cut -d ':' -f 2)
for pkg in "{remaining[@]}"; do
    echo "Uninstalling: ${pkg}"
    adb shell pm uninstall -k --user 0 "${pkg}"
done
fi
sleep 3



if [ "$1" = "--skip-expanded" ]; then
echo "Skipping expanded Installation"
else
echo "INSTALLING EXPANDED FOSS APPS....."
#SOFTWARE INSTALLS.  SOME ARE FROM https://todon.nl/users/joenepraat/statuses/117360993990051238
    echo 'Installing F-Droid.'
    curl -o /tmp/F-Droid.apk https://f-droid.org/F-Droid.apk
    adb install /tmp/F-Droid.apk
    echo 'Installing unlauncher.'
    curl -o /tmp/unlauncher.apk https://f-droid.org/repo/com.jkuester.unlauncher_18.apk
    adb install /tmp/unlauncher.apk
    echo 'Heliboard Keyboard'
    curl -L -o /tmp/keyboard_4101.apk https://f-droid.org/repo/helium314.keyboard_4101.apk 
    adb install /tmp/keyboard_4101.apk
    echo 'Installing Waterfox Browser.'
    waterfoxversion="$(curl -s https://api.github.com/repos/BrowserWorks/waterfox-android/releases/latest | grep browser_download_url | cut -d '"' -f 4 | grep arm64 | cut -d '/' -f 8)"
    curl -L -o /tmp/waterfox.apk https://github.com/BrowserWorks/waterfox-android/releases/download/"${waterfoxversion}"/fenix-waterfox-arm64-v8a-release.apk
    adb install /tmp/waterfox.apk
    echo 'Servo Browser.'
    curl -L -o /tmp/servo.apk https://download.servo.org/nightly/android/servo-aarch64-android.apk
    adb install /tmp/servo.apk 
    
    #github newest version
#    echo 'Redreader'
#    redreaderversion="$(curl -s https://api.github.com/repos/QuantumBadger/RedReader/releases/latest | grep browser_download_url | cut -d '"' -f 4 | cut -d '/' -f 8)"
#    curl -L -o /tmp/redreader.apk https://github.com/QuantumBadger/RedReader/releases/download/"${redreaderversion}"/RedReader-"${redreaderversion}".apk
#    adb install /tmp/redreader.apk

    echo 'Aurora Store'
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
    echo 'IzzyonDroid Repo'
    curl -L -o /tmp/izzyondroid_14.apk https://apt.izzysoft.de/fdroid/repo/in.sunilpaulmathew.izzyondroid_14.apk 
    adb install /tmp/izzyondroid_14.apk 
    echo 'Fluffychat Matrix'
    curl -L -o /tmp/fluffychat_3566.apk https://f-droid.org/repo/chat.fluffy.fluffychat_3566.apk 
    adb install /tmp/fluffychat_3566.apk
    echo 'GhostCommander Files'
    curl -L -o /tmp/commander_479.apk https://f-droid.org/repo/com.ghostsq.commander_479.apk 
    adb install /tmp/commander_479.apk
    echo 'Spamblocker Caller'
    curl -L -o /tmp/spamblocker_614.apk https://f-droid.org/repo/dev.kerballone.spamblocker_614.apk 
    adb install /tmp/spamblocker_614.apk
    echo 'Voice Audiobooks'
    curl -L -o /tmp/audiobook_5406001.apk https://f-droid.org/repo/de.ph1b.audiobook_5406001.apk 
    adb install /tmp/audiobook_5406001.apk 
    echo 'Wikipedia'
    curl -L -o /tmp/wikipedia_50606.apk https://f-droid.org/repo/org.wikipedia_50606.apk 
    adb install /tmp/wikipedia_50606.apk
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
    echo 'ntfy'
    curl -L -o /tmp/ntfy.apk https://f-droid.org/repo/io.heckel.ntfy_63.apk
    adb install /tmp/ntfy.apk 
    echo 'pocketpaint'
    curl -L -o /tmp/pocketpaint.apk https://f-droid.org/repo/org.catrobat.paintroid_54.apk
    adb install /tmp/pocketpaint.apk 
    echo 'thunderbird'
    curl -L -o /tmp/thunderbird.apk https://f-droid.org/repo/net.thunderbird.android_33.apk
    adb install /tmp/thunderbird.apk 
    echo 'trackercontrol'
    curl -L -o /tmp/trackercontrol.apk https://f-droid.org/repo/net.kollnig.missioncontrol.fdroid_2026080501.apk
    adb install /tmp/trackercontrol.apk 
    echo 'pipepipe'
    curl -L -o /tmp/pipepipe.apk https://f-droid.org/repo/InfinityLoop1309.NewPipeEnhanced_110904.apk
    adb install /tmp/pipepipe.apk
    echo 'wifianalyzer'
    curl -L -o /tmp/wifianalyzer.apk https://f-droid.org/repo/com.vrem.wifianalyzer_72.apk
    adb install /tmp/wifianalyzer.apk 
    echo 'comaps'
    curl -L -o /tmp/comaps.apk https://f-droid.org/repo/app.comaps.fdroid_26100519.apk
    adb install /tmp/comaps.apk 
    echo 'episteme'
    curl -L -o /tmp/episteme.apk https://f-droid.org/repo/com.aryan.reader.oss_62.apk
    adb install /tmp/episteme.apk 
    echo 'scrubpony'
    curl -L -o /tmp/scrubpony.apk https://f-droid.org/repo/com.norsehorse.scrubpony_6.apk
    adb install /tmp/scrubpony.apk 
    echo 'yetanothercallblocker'
    curl -L -o /tmp/yetanothercallblocker.apk https://f-droid.org/repo/dummydomain.yetanothercallblocker_5170.apk
    adb install /tmp/yetanothercallblocker.apk 
    echo 'syncthingfork'
    curl -L -o /tmp/syncthingfork.apk https://f-droid.org/repo/com.github.catfriend1.syncthingfork_2010500.apk
    adb install /tmp/syncthingfork.apk 
    echo 'nora'
    curl -L -o /tmp/nora.apk https://f-droid.org/repo/jp.nonbili.nora_9504.apk
    adb install /tmp/nora.apk 
    echo 'vlc'
    curl -L -o /tmp/vlc.apk https://f-droid.org/repo/org.videolan.vlc_13070208.apk
    adb install /tmp/vlc.apk 
    echo 'orion'
    curl -L -o /tmp/orion.apk https://f-droid.org/repo/universe.constellation.orion.viewer_2506.apk
    adb install /tmp/orion.apk   
fi

    
read -rp "Press enter to reboot target android device, or Control-C to end script now without reboot."
adb shell reboot
exit 0
