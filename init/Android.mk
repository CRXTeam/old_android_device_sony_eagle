ifeq ($(TARGET_INIT_VENDOR_LIB),libinit_eagle)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS := -Wall
LOCAL_SRC_FILES := init_eagle.c
LOCAL_MODULE := libinit_eagle
include $(BUILD_STATIC_LIBRARY)

endif
