#!/usr/bin/env bash
#ROLLBACK.SH
#THIS SCRIPT IS NOT AUTOMATED,
#YOU MUST PASTE WHAT PACKAGES YOU WANT RESTORED BETWEEN THE BELOW MARKERS
rollback_list=(
#PUT PACKAGES TO REINSTALL BELOW THIS LINE
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
com.android.chrome
com.google.ar.core
com.google.android.videos
com.google.tango.measure
com.google.android.talk
com.android.hotwordenrollment.google
com.google.android.gm
com.google.android.setupwizard
com.google.android.youtube
com.android.thememanager

#PUT PACKAGES TO REINSTALL ABOVE THIS LINE
)

   for i in "${rollback_list[@]}"; do
      echo -e "EXECUTING: adb shell cmd package install-existing $i \nOUTPUT:"
      adb shell cmd package install-existing "$i"
   done

exit 0

