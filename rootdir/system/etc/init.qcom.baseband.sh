#!/sbin/sh

# detect model and set props

HWINFO=$(cat /proc/cci_hwid_info)

if [[ $HWINFO == *projectid=0 multisim=1 bandid=0* ]] # D2302
then
  setprop ro.build.description "D2302-user 18.3.C.0.40 2n9_bg release-keys"
  setprop ro.build.fingerprint "Sony/D2302/D2302:4.4.2/18.3.C.0.40/2n9_bg:user/release-keys"
  setprop ro.semc.product.model "D2302"
  setprop ro.semc.ms_type_id "PM-0721-BV"
  setprop ro.semc.version.fs "GLOBAL-HSPADS"
  setprop ro.semc.product.name "Xperia M2 Dual"
  setprop ro.semc.product.device "D23"
  setprop ro.product.model "D2302"
  setprop persist.radio.multisim.config dsds
elif [[ $HWINFO == *projectid=1 multisim=0 bandid=0* ]] # D2303
  setprop ro.build.description "D2303-user 18.3.C.0.40 2n9_bg release-keys"
  setprop ro.build.fingerprint "Sony/D2303/D2303:4.4.2/18.3.C.0.40/2n9_bg:user/release-keys"
  setprop ro.semc.product.model "D2303"
  setprop ro.semc.ms_type_id "PM-0722-BV"
  setprop ro.semc.version.fs "GLOBAL-LTE"
  setprop ro.semc.product.name "Xperia M2"
  setprop ro.semc.product.device "D23"
  setprop ro.product.model "D2303"
  setprop ro.telephony.default_network 9
then
elif [[ $HWINFO == *projectid=0 multisim=0 bandid=1* ]] # D2305
  setprop ro.build.description "D2305-user 18.3.C.0.40 2n9_bg release-keys"
  setprop ro.build.fingerprint "Sony/D2305/D2305:4.4.2/18.3.C.0.40/2n9_bg:user/release-keys"
  setprop ro.semc.product.model "D2305"
  setprop ro.semc.ms_type_id "PM-0720-BV"
  setprop ro.semc.version.fs "GLOBAL-HSPASS"
  setprop ro.semc.product.name "Xperia M2"
  setprop ro.semc.product.device "D23"
  setprop ro.product.model "D2305"
then
elif [[ $HWINFO == *projectid=1 multisim=0 bandid=1* ]] # D2306
  setprop ro.build.description "D2306-user 18.3.C.0.40 2n9_bg release-keys"
  setprop ro.build.fingerprint "Sony/D2306/D2306:4.4.2/18.3.C.0.40/2n9_bg:user/release-keys"
  setprop ro.semc.product.model "D2306"
  setprop ro.semc.ms_type_id "PM-0723-BV"
  setprop ro.semc.version.fs "AMERICAS-LTE"
  setprop ro.semc.product.name "Xperia M2"
  setprop ro.semc.product.device "D23"
  setprop ro.product.model "D2306"
  setprop ro.telephony.default_network 9
then
fi
