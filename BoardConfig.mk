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
USE_CAMERA_STUB := true

# inherit from qcom-common
include device/sony/msm8226-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := D2302,D2303,D2305,D2306,eagle,eagle_ds,eagle_lte

TARGET_SPECIFIC_HEADER_PATH += device/sony/eagle/include

# Kernel properties
TARGET_KERNEL_CONFIG := eagle_lte_defconfig
TARGET_KERNEL_SOURCE := kernel/sony/eagle
TARGET_DTB_EXTRA_FLAGS := --force-v2

# Hardware Features
BOARD_HARDWARE_CLASS := device/sony/eagle/cmhw

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/eagle/bluetooth

# Camera
COMMON_GLOBAL_CFLAGS += -DSONY_CAM_PARAMS

# WiFi
WLAN_MODULES:
	mkdir -p $(KERNEL_MODULES_OUT)/pronto
	mv $(KERNEL_MODULES_OUT)/wlan.ko $(KERNEL_MODULES_OUT)/pronto/pronto_wlan.ko
	ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko
TARGET_KERNEL_MODULES += WLAN_MODULES

# Partition information
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1962934272
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5460983808

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/eagle/rootdir/fstab.qcom
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
