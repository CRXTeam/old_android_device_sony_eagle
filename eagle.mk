# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include non-opensource parts
$(call inherit-product, vendor/sony/eagle/eagle-vendor.mk)

# msm8226 common
$(call inherit-product, device/sony/msm8226-common/msm8226-common.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \

# This device is xhdpi.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Init 2.0
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.sony.rc:root/init.sony.rc \
    $(LOCAL_PATH)/rootdir/init.sony.usb.rc:root/init.sony.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.baseband.sh:system/etc/init.qcom.baseband.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/sec_config:system/etc/sec_config

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/bootrec-device:recovery/bootrec-device

# Sbin
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/charger:root/charger \
    $(LOCAL_PATH)/rootdir/sbin/wait4tad_static:root/sbin/wait4tad_static \
    $(LOCAL_PATH)/rootdir/sbin/tad_static:root/sbin/tad_static

# Audio Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/msap.conf:system/etc/msap.conf \

# NFC Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Media recording
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# System Monitor (Thermal Control)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/sysmon.cfg:system/etc/sysmon.cfg

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/rootdir/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/rootdir/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Camera
PRODUCT_PACKAGES += \
    CameraWorkaround

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
