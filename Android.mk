# Copyright 2008 The Android Open Source Project
#
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-subdir-java-files)
#LOCAL_STATIC_JAVA_LIBRARIES := SVMPProtocol
LOCAL_MODULE := rtspserv
include $(BUILD_JAVA_LIBRARY)

################################################################
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := rtspserv
LOCAL_MODULE_CLASS := BIN
LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

################################################################
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := librtsp_jni
LOCAL_SRC_FILES:= jni/org_mitre_svmp_stream_Session.c
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SHARED_LIBRARIES := liblog
include $(BUILD_SHARED_LIBRARY)
