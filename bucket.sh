#!/usr/bin/env bash
#BUCKET.SH
#DISCLAIMER: CANNOT BE HELD LIABLE FOR YOU RUNNING THIS ON YOUR DEVICE AND BRICKING IT.
target_package_list=(
com.google.android.apps.bard
com.google.android.apps.adm
com.google.android.devicelockcontroller
com.google.android.overlay.devicelockcontroller
com.google.android.projection.gearhead
com.google.android.embedded.projection
com.google.android.apps.auto.carservices
com.google.android.carassistant
com.google.android.gms.location.history
com.google.android.gms.supervision
com.google.android.gms
com.google.android.calculator
com.google.android.apps.messaging
com.google.android.apps.chromecast.app
com.google.android.googlequicksearchbox
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
android.autoinstalls.config.att.sn333a
com.att.csoiam.mobilekey
com.att.dh
com.att.iq
com.att.iqi
com.att.mobile.android.vvm
com.att.myWireless
com.att.personalcloud
com.aura.jet.att
com.aura.oobe.att
com.amazon.appmanager
com.amazon.mShop.android.shopping
com.facebook.appmanager
com.facebook.katana
com.facebook.system
com.android.HorCali
com.debug.loggerui
com.kb.calibration
com.mediatek.apmonitor
com.mediatek.engineermode
com.pri.autotest
com.pri.factorytest
com.tools.logkit
com.android.apps.tag
com.android.avatarpicker
com.android.bips
com.android.bookmarkprovider
com.android.calllogbackup
com.android.cameraextensions
com.android.carrierdefaultapp
com.android.cellbroadcastreceiver
com.android.compos.payload
com.android.cts.ctsshim
com.android.cts.priv.ctsshim
com.android.DeviceAsWebcam
com.android.devicediagnostics
com.android.dreams.basic
com.android.dynsystem
com.android.egg
com.android.imsserviceentitlement
com.android.managedprovisioning
com.android.microdroid.empty_payload
com.android.musicfx
com.android.providers.partnerbookmarks
com.android.role.notes.enabled
com.android.simappdialog
com.android.traceur
com.android.virtualmachine.res
com.gig.euiccoverlay
com.google.ambient.streaming
com.google.videos
com.mediatek.mdmconfig
com.mediatek.mdmlsample
com.mediatek.omacp
com.mediatek.voicecommand
com.mediatek.voiceunlock
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
com.google.android.play.games
com.google.android.deskclock
com.google.android.inputmethod.latin
com.android.calculator2
com.android.camera2
com.android.soundrecorder
com.android.soundpicker
com.android.htmlviewer
com.google.android.printservice.recommendation
com.google.android.apps.kids.home
com.google.android.feedback
com.android.vending
com.google.android.health.connect.backuprestore
com.google.android.healthconnect.controller
com.google.android.apps.wellbeing
com.google.android.apps.safetyhub
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
com.lmi.motorola.rescuesecurity
com.facebook.services
com.android.chrome
com.google.ar.core
com.google.android.videos
com.google.tango.measure
com.google.android.talk
com.android.hotwordenrollment.google
com.google.android.gm
com.google.android.setupwizard
com.google.android.youtube
org.mipay.android.manager
com.google.android.apps.youtube.music
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
att.dh
att.dtv.shaderemote
att.tv
att.myWireless
asurion.android.protech.att
att.android.attsmartwifi
com.att.thanks
com.att.mobilesecurity
com.att.callprotect
com.dti.att
com.sprint.ms.cdm
com.sprint.ms.smf.services
com.sprint.ce.updater
com.sprint.w.installer
cci.usage
com.block.juggle
com.cricketwireless.minus
com.cricketwireless.thescoop
com.digitalturbine.android.apps.news.uscellular
com.handmark.expressweather
com.inmobi.weather
com.metropcs.metrozone
com.mizmowireless.acctmgt
com.meta.attribution
com.oem.euiccpartnerapp
com.oem.euiccpartnerapp.overlay.att
com.oem.euiccpartnerapp.overlay.vzw
com.oem.euiccpartnerapp.overlay.na
com.oem.euiccpartnerapp.overlay.retca
com.oem.euiccpartnerapp.overlay.tmo
com.oem.euiccpartnerapp.overlay.cc
com.oem.euiccpartnerapp.overlay.br
com.spectrum.cm.headless
com.instagram.android
com.securityandprivacy.android.verizon.vms
com.payjoy.access
com.motorola.android.overlay.payjoy
com.motorola.sprint.setupext
com.motorola.vzw.provider
com.motorola.android.launcher.overlay.amx
com.motorola.android.providers.settings.overlay.dppnone
com.motorola.setup.overlay.vzw
com.motorola.ccc.notification
com.motorola.launcherconfig.overlay.vzwpre
com.mediatek.rsu.tfn
com.uscc.ecid
com.motorola.att.phone.extensions
com.motorola.att.sim.extensions
com.motorola.attvowifi
com.verizon.mips.services
com.verizon.remoteSimlock
com.vzw.apnlib
com.vzw.ecid
securityandprivacy.android.verizon.vms
com.ironsrc.aura.tmo
com.trustonic.alpsservice
com.trustonic.teeservice
com.aura.oobe.motorola
com.aura.oobe.solutions
com.motorola.help
com.motorola.moto
com.motorola.motocare
com.motorola.android.fmradio
com.motorola.fmplayer
com.motorola.motocameradesktop
com.motorola.spaces
com.motorola.aiservices
com.motorola.android.buacloudcontactadapter
com.motorola.contacts.preloadcontacts.overlay.vzw
com.motorola.android.nativedropboxagent
com.motorola.android.provisioning
com.motorola.android.providers.chromehomepage
com.motorola.appforecast
com.motorola.audiorecorder
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
com.motorola.motocit
com.motorola.om
com.motorola.omadm.att
com.motorola.omadm.service
com.motorola.omadm.vzw
com.motorola.paks
com.motorola.paks.notification
com.motorola.personalize
com.motorola.playautoinstallext
com.motorola.lifetimedata
com.motorola.motcameradesktop
com.motorola.bach.modemstats
com.motorola.visualvoicemail
com.motorola.dimo
com.motorola.brapps
com.motorola.setupwizard.devicesetup
com.motorola.setupwizard.controller
com.motorola.setupwizard.phoneservice
com.motorola.smartfeed
com.motorola.spectrum.setup.extensions
com.motorola.timeweatherwidget
com.motorola.vzw.cloudsetup
com.motorola.vzw.phone.extensions
com.motorola.vzw.settings.extensions
com.motorola.vzw.voicemail.extensions
com.motorola.vzw.pco.extensions.pcoreceiver
com.motorola.tmo.settingsext
com.motorola.setup.overlay.tmo
com.motorola.android.launcher.overlay.tmo.rcs.apptray
com.motorola.android.launcher.overlay.tmonosim.rcs.apptray
com.motorola.android.overlay.tmo
com.tmobile.tuesdays
com.android.wifi.resources.overlay.WifiTmoOverlay
com.motorola.android.systemui.overlay.tmo
com.android.providers.settings.overlay.tmo
com.motorola.android.settings.overlay.tmo
com.motorola.android.providers.settings.overlay.tmo
com.motorola.launcherconfig.overlay.tmo
com.motorola.tmo.setupext
com.motorola.android.server.telecom.overlay.tmo
com.tmobile.vvm.application
com.tmobile.pr.mytmobile
com.tmobile.m1
com.tmobile.pr.adapt
com.tmobile.rsuadapter.qualcomm
com.tmobile.rsuapp
com.tmobile.rsusrv
com.tmobile.dm.cm
com.tmobile.dm.ms.services
com.tmobile.echolocate
com.tmobile.echolocate.system
com.tmobile.rsuadapter.aidl
com.aura.oobe.dish
com.aura.appadvisor.att
com.aura.appadvisor.cricket
com.einnovation.temu
com.glance.lockscreenM
com.inmobi.installer
com.justplay.app
com.linkedin.android
com.nebula.mahjongtile
com.vitastudio.mahjong
com.opera.app.news.local
com.peoplefun.wordcross
com.ss.android.ugc.tiktok.pro
com.tripledot.solitaire
com.motorola.iqimotmetrics
com.dish.vvm
com.dish.wireless.carrierapp
com.dish.wireless.installer
com.motorola.android.systemui.overlay.sprint
com.motorola.systemui.overlay.jp
com.motorola.android.launcher.overlay.koodo
com.motorola.android.launcher.overlay.telus
com.motorola.android.launcher.overlay.amxcl
com.motorola.android.launcher.overlay.amxco
com.motorola.android.launcher.overlay.amxla
com.motorola.android.launcher.overlay.amxmx
com.motorola.android.launcher.overlay.amxpe
com.verizon.loginengine.unbranded
com.verizon.obdm
com.vzw.apnservice
com.xfinitymobile.cometcarrierservice
com.lenovo.lsf.user
udc.lenovo.com.udclient
com.motorola.ccc.devicemanagement
com.motorola.ccc.mainplm
com.motorola.mototour
com.motorola.discovery
com.motorola.help.extlog
com.motorola.nativedropboxagent
com.dolby.daxservice
com.motorola.actions
com.motorola.gesture
com.motorola.actions.overlay
com.motorola.android.launcher.overlay.att
com.motorola.android.launcher.overlay.att.apptray
com.motorola.android.launcher.overlay.cricket.apptray
com.motorola.android.overlay.attpre
com.motorola.android.overlay.attpre.default
com.motorola.android.overlay.cricket
com.motorola.android.overlay.cricket.iqi
com.motorola.android.settings.overlay.att
com.motorola.android.systemui.overlay.att
com.motorola.contacts.preloadcontacts.overlay.attpre
com.motorola.launcherconfig.overlay.att
com.motorola.launcherconfig.overlay.attpre
com.motorola.launcherconfig.overlay.cricket
com.motorola.setup.overlay.att
com.motorola.setup.overlay.att.simoobe
com.motorola.android.contacts.overlay.vzw
com.motorola.android.launcher.overlay.vzw
com.motorola.android.server.telecom.overlay.gms.boost
com.motorola.android.settings.overlay.vzw
com.motorola.android.systemui.overlay.vzw
com.motorola.launcherconfig.overlay.vzw
com.metro.minus1
com.motorola.android.launcher.overlay.metropcs.rcs.apptray
com.motorola.thermalservice.overlay.tmo
com.dish.wireless.activation
com.motorola.android.launcher.overlay.boost.apptray
com.motorola.launcherconfig.overlay.boost
com.motorola.omadm.dish
com.motorola.setup.overlay.boost
com.android.phone.overlay.boost
com.motorola.extensions.tracfone
com.motorola.launcherconfig.overlay.tracfone
com.motorola.setup.overlay.tracfone
com.motorola.tracfone.rsu
com.motorola.tracfone.setup
com.swishme.tracfone
com.tracfone.generic.mysites
com.tracfone.preload.accountservices
com.motorola.comcastext
com.motorola.android.launcher.overlay.comcast
com.motorola.android.launcher.overlay.comcastbusiness
com.motorola.android.launcher.overlay.assurance.rcs.apptray
com.motorola.android.launcher.overlay.vivo
com.motorola.android.systemui.overlay.usc
com.motorola.launcherconfig.overlay.comcast
com.motorola.settings.overlay.comcast
com.motorola.setup.overlay.comcast
aura.oobe.motorola
com.aura.news.hashtag.news
com.huub.tiger
com.motorola.wifi.motowifimetrics
com.motorola.android.launcher.overlay.retail.global
com.motorola.smartmode
com.mediatek.carrierexpress
com.whatsapp
#SOME APPS TO CONSIDER KEEPING
#com.motorola.motosecurecore
#com.motorola.securityhub
#com.motorola.camera5
#com.motorola.setup
#com.motorola.wifi.motowifimetrics
#com.motorola.motosecurecore
#com.motorola.motosignature.app
#com.motorola.motosignature2.app
#com.motorola.nfwlocationattribution
#com.google.android.apps.adm
#com.motorola.camera3
#com.motorola.camera3.content.ai


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
if [[ $1 != '-a' ]]; then
  read -n 1 -s -r -p "Press any key to continue, PRESS CONTROL-C TO CANCEL!"
  echo    # (optional) move to a new line
fi
   for i in "${target_package_list[@]}"; do
      echo -e "EXECUTING: adb shell pm uninstall -k --user 0 $i \nOUTPUT:"
      adb shell pm uninstall -k --user 0 "$i"
   done
  # regex_package_list="$(adb shell pm list packages | grep -iE 'instagram|trustsonic|tracfone|candy|mizmo|whatsap|cricket|vzw|juggle|particlenews|tripledot|pinterest|playsimple|candycrush|temu|doordash|facebook|mahjong|adfone|meta|glance|dish|linkedin|snapchat|tiktok|aura|playsimple|ironsrc|amazon|twitter|particlenews|swish|youtube|netflix|tripledot|com.att|vivo|lowes|homedepot|booking|huub|vita' | grep -viE 'com.motorola|faceunlock|android' |  cut -d ':' -f 2)"
   for i in $(adb shell pm list packages | grep -iE 'instagram|trustsonic|tracfone|candy|mizmo|whatsap|cricket|vzw|juggle|particlenews|tripledot|pinterest|playsimple|candycrush|temu|doordash|facebook|mahjong|adfone|meta|glance|dish|linkedin|snapchat|tiktok|aura|playsimple|ironsrc|amazon|twitter|particlenews|swish|youtube|netflix|tripledot|com.att|vivo|lowes|homedepot|booking|huub|vita' | grep -viE 'com.motorola|faceunlock|android' |  cut -d ':' -f 2)
   do
      echo "Uninstalling: ${i}"
      adb shell pm uninstall -k --user 0 "${i}"
   done


if [[ $1 = '-a' ]]; then
  exit 0
fi

echo "YOU ARE ABOUT TO INSTALL AN ENTIRE PHONE WORTH OF FREE AND OPEN SOURCE APPS.  JUST ONE THING, THIS CAN TAKE QUITE A WHILE, YA AND IM SURE NO ONE IS RATE LIMITING F-DROID... MHM."
read -p "You can install stuff with adb install on your own time.  Do you want to spend up to an hour downloading apks? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
echo "INSTALLING EXPANDED FOSS APPS....."
#SOFTWARE INSTALLS.  SOME ARE FROM https://todon.nl/users/joenepraat/statuses/117360993990051238
    echo 'Installing F-Droid.'
	if [[ ! -f ~/tmp/F-Droid.apk ]]; then
    curl -o ~/tmp/F-Droid.apk https://f-droid.org/F-Droid.apk
	fi
    adb install ~/tmp/F-Droid.apk
    echo 'Installing unlauncher.'
	if [[ ! -f ~/tmp/unlauncher.apk ]]; then
    curl -o ~/tmp/unlauncher.apk https://f-droid.org/repo/com.jkuester.unlauncher_18.apk
	fi
    adb install ~/tmp/unlauncher.apk
    echo 'Heliboard Keyboard'
	if [[ ! -f ~/tmp/keyboard_4101.apk ]]; then
    curl -L -o ~/tmp/keyboard_4101.apk https://f-droid.org/repo/helium314.keyboard_4101.apk 
	fi
    adb install ~/tmp/keyboard_4101.apk
    echo 'Installing Waterfox Browser.'
	if [[ ! -f ~/tmp/waterfox.apk ]]; then
    waterfoxversion="$(curl -s https://api.github.com/repos/BrowserWorks/waterfox-android/releases/latest | grep browser_download_url | cut -d '"' -f 4 | grep arm64 | cut -d '/' -f 8)"
    curl -L -o /tmp/waterfox.apk https://github.com/BrowserWorks/waterfox-android/releases/download/"${waterfoxversion}"/fenix-waterfox-arm64-v8a-release.apk
	fi
    adb install /tmp/waterfox.apk
    echo 'Installing Shizuku+.'
	if [[ ! -f ~/tmp/shizukuplus.apk ]]; then
    curl -L -o ~/tmp/shizukuplus.apk "https://github.com/thejaustin/ShizukuPlus/releases/download/13.7.0.r3216/Shizuku+-13.7.0.r3216.apk"
	fi
    adb install ~/tmp/shizukuplus.apk
    echo 'Servo Browser.'
	if [[ ! -f ~/tmp/servo.apk ]]; then
    curl -L -o ~/tmp/servo.apk https://download.servo.org/nightly/android/servo-aarch64-android.apk
	fi
    adb install ~/tmp/servo.apk 
    echo 'Aurora Store'
	if [[ ! -f ~/tmp/aurora.apk ]]; then
    curl -L -o ~/tmp/aurora.apk https://f-droid.org/repo/com.aurora.store_76.apk 
	fi
    adb install ~/tmp/aurora.apk
    echo 'Aegis Authenticator'
	if [[ ! -f ~/tmp/aegis_82.apk ]]; then
    curl -L -o ~/tmp/aegis_82.apk https://f-droid.org/repo/com.beemdevelopment.aegis_82.apk 
	fi
    adb install ~/tmp/aegis_82.apk 
    echo 'Breezy Weather'
	if [[ ! -f ~/tmp/breezyweather_60202.apk ]]; then
    curl -L -o ~/tmp/breezyweather_60202.apk https://f-droid.org/repo/org.breezyweather_60202.apk 
	fi
    adb install ~/tmp/breezyweather_60202.apk
    echo 'IzzyonDroid Repo'
	if [[ ! -f ~/tmp/izzyondroid_14.apk ]]; then
    curl -L -o ~/tmp/izzyondroid_14.apk https://apt.izzysoft.de/fdroid/repo/in.sunilpaulmathew.izzyondroid_14.apk 
	fi
    adb install ~/tmp/izzyondroid_14.apk 
    echo 'GhostCommander Files'
	if [[ ! -f ~/tmp/commander_479.apk ]]; then
    curl -L -o ~/tmp/commander_479.apk https://f-droid.org/repo/com.ghostsq.commander_479.apk 
	fi
    adb install ~/tmp/commander_479.apk
    echo 'Spamblocker Caller'
	if [[ ! -f ~/tmp/spamblocker_614.apk ]]; then
    curl -L -o ~/tmp/spamblocker_614.apk https://f-droid.org/repo/dev.kerballone.spamblocker_614.apk 
	fi
    adb install ~/tmp/spamblocker_614.apk
    echo 'Voice Audiobooks'
	if [[ ! -f ~/tmp/audiobook_5406001.apk ]]; then
    curl -L -o ~/tmp/audiobook_5406001.apk https://f-droid.org/repo/de.ph1b.audiobook_5406001.apk 
	fi
    adb install ~/tmp/audiobook_5406001.apk 
    echo 'Wikipedia'
	if [[ ! -f ~/tmp/wikipedia_50606.apk ]]; then
    curl -L -o ~/tmp/wikipedia_50606.apk https://f-droid.org/repo/org.wikipedia_50606.apk 
	fi
    adb install ~/tmp/wikipedia_50606.apk
    echo 'Fedilab'
	if [[ ! -f ~/tmp/mastodon_570.apk ]]; then
    curl -L -o ~/tmp/mastodon_570.apk https://f-droid.org/repo/fr.gouv.etalab.mastodon_570.apk 
	fi
    adb install ~/tmp/mastodon_570.apk 
    echo 'RadioDroid'
	if [[ ! -f ~/tmp/radiodroid2_96.apk ]]; then
    curl -L -o ~/tmp/radiodroid2_96.apk https://f-droid.org/repo/net.programmierecke.radiodroid2_96.apk 
	fi
    adb install ~/tmp/radiodroid2_96.apk
    echo 'Sky Map'
	if [[ ! -f ~/tmp/stardroid_1751.apk ]]; then
    curl -L -o ~/tmp/stardroid_1751.apk https://f-droid.org/repo/com.google.android.stardroid_1751.apk 
	fi
    adb install ~/tmp/stardroid_1751.apk 
    echo 'Fossify Messages'
	if [[ ! -f ~/tmp/messages_23.apk ]]; then
    curl -L -o ~/tmp/messages_23.apk https://f-droid.org/repo/org.fossify.messages_23.apk 
	fi
    adb install ~/tmp/messages_23.apk
    echo 'Fossify Gallery'
	if [[ ! -f ~/tmp/gallery_28.apk ]]; then
    curl -L -o ~/tmp/gallery_28.apk https://f-droid.org/repo/org.fossify.gallery_28.apk 
	fi
    adb install ~/tmp/gallery_28.apk
    echo 'ntfy'
	if [[ ! -f ~/tmp/ntfy.apk ]]; then
    curl -L -o ~/tmp/ntfy.apk https://f-droid.org/repo/io.heckel.ntfy_63.apk
	fi
    adb install ~/tmp/ntfy.apk 
    echo 'pocketpaint'
	if [[ ! -f ~/tmp/pocketpaint.apk ]]; then
    curl -L -o ~/tmp/pocketpaint.apk https://f-droid.org/repo/org.catrobat.paintroid_54.apk
	fi
    adb install ~/tmp/pocketpaint.apk 
    echo 'thunderbird'
	if [[ ! -f ~/tmp/thunderbird.apk ]]; then
    curl -L -o ~/tmp/thunderbird.apk https://f-droid.org/repo/net.thunderbird.android_33.apk
	fi
    adb install ~/tmp/thunderbird.apk 
    echo 'pipepipe'
	if [[ ! -f ~/tmp/pipepipe.apk ]]; then
    curl -L -o ~/tmp/pipepipe.apk https://f-droid.org/repo/InfinityLoop1309.NewPipeEnhanced_110904.apk
	fi
    adb install ~/tmp/pipepipe.apk
    echo 'wifianalyzer'
	if [[ ! -f ~/tmp/wifianalyzer.apk ]]; then
    curl -L -o ~/tmp/wifianalyzer.apk https://f-droid.org/repo/com.vrem.wifianalyzer_72.apk
	fi
    adb install ~/tmp/wifianalyzer.apk 
    echo 'comaps'
	if [[ ! -f ~/tmp/comaps.apk ]]; then
    curl -L -o ~/tmp/comaps.apk https://f-droid.org/repo/app.comaps.fdroid_26100519.apk
	fi
    adb install ~/tmp/comaps.apk 
    echo 'episteme'
	if [[ ! -f ~/tmp/episteme.apk ]]; then
    curl -L -o ~/tmp/episteme.apk https://f-droid.org/repo/com.aryan.reader.oss_62.apk
	fi
    adb install ~/tmp/episteme.apk 
    echo 'scrubpony'
	if [[ ! -f ~/tmp/scrubpony.apk ]]; then
    curl -L -o ~/tmp/scrubpony.apk https://f-droid.org/repo/com.norsehorse.scrubpony_6.apk
	fi
    adb install ~/tmp/scrubpony.apk 
    echo 'syncthingfork'
	if [[ ! -f ~/tmp/syncthingfork.apk ]]; then
    curl -L -o ~/tmp/syncthingfork.apk https://f-droid.org/repo/com.github.catfriend1.syncthingfork_2010500.apk
	fi
    adb install ~/tmp/syncthingfork.apk 
    echo 'nora'
	if [[ ! -f ~/tmp/nora.apk ]]; then
    curl -L -o ~/tmp/nora.apk https://f-droid.org/repo/jp.nonbili.nora_9504.apk
	fi
    adb install ~/tmp/nora.apk 
    echo 'de1984'
	if [[ ! -f ~/tmp/de1984.apk ]]; then
    curl -L -o ~/tmp/de1984.apk https://apt.izzysoft.de/fdroid/repo/io.github.dorumrr.de1984_53.apk
	fi
    adb install ~/tmp/de1984.apk 
    echo 'openscan'
	if [[ ! -f ~/tmp/openscan.apk ]]; then
    curl -L -o ~/tmp/openscan.apk https://apt.izzysoft.de/fdroid/repo/com.ethereal.openscan_2010.apk
	fi
    adb install ~/tmp/openscan.apk 
    echo 'paperize'
	if [[ ! -f ~/tmp/paperize.apk ]]; then
    curl -L -o ~/tmp/paperize.apk https://apt.izzysoft.de/fdroid/repo/com.anthonyla.paperize_58.apk
	fi
    adb install ~/tmp/paperize.apk 
    echo 'filemanager'
	if [[ ! -f ~/tmp/filemanager.apk ]]; then
    curl -L -o ~/tmp/filemanager.apk https://f-droid.org/repo/org.fossify.filemanager_14.apk
	fi
    adb install ~/tmp/filemanager.apk 
    echo 'clock'
	if [[ ! -f ~/tmp/clock.apk ]]; then
    curl -L -o ~/tmp/clock.apk https://f-droid.org/repo/org.fossify.clock_10.apk
	fi
    adb install ~/tmp/clock.apk 
	echo 'simple text editor'
	if [[ ! -f ~/tmp/textpad_63.apk ]]; then
    curl -L -o ~/tmp/textpad_63.apk https://f-droid.org/repo/com.maxistar.textpad_63.apk
	fi
    adb install ~/tmp/textpad_63.apk 
    echo 'OpenTasker'
	if [[ ! -f ~/tmp/OpenTasker.apk ]]; then
    curl -L -o ~/tmp/OpenTasker.apk https://github.com/SysAdminDoc/OpenTasker/releases/download/v0.2.94/OpenTasker-v0.2.94.apk
	fi
    adb install ~/tmp/OpenTasker.apk 
    echo 'obtainum'
	if [[ ! -f ~/tmp/obtainium.apk ]]; then
    curl -L -o ~/tmp/obtainum.apk https://github.com/ImranR98/Obtainium/releases/download/v1.7.4/app-release.apk
	fi
    adb install ~/tmp/obtainium.apk 
    echo 'ShizuStore'
	if [[ ! -f ~/tmp/ShizuStore.apk ]]; then
    curl -L -o ~/tmp/ShizuStore.apk https://github.com/timschneeb/ShizuStore/releases/download/1.5.0/ShizuStore-1.5.0.apk
	fi
    adb install ~/tmp/ShizuStore.apk 



	
#github newest verson
#    echo 'Redreader'
#    redreaderversion="$(curl -s https://api.github.com/repos/QuantumBadger/RedReader/releases/latest | grep browser_download_url | cut -d '"' -f 4 | cut -d '/' -f 8)"
#    curl -L -o ~/tmp/redreader.apk https://github.com/QuantumBadger/RedReader/releases/download/"${redreaderversion}"/RedReader-"${redreaderversion}".apk
#    adb install ~/tmp/redreader.apk
    
fi

    
read -p "Reboot android? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    adb shell reboot
fi
exit 0
