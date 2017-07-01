#
# Copyright (C) 2014 Google Inc.
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
#

LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),shamu)
###############################################
include $(CLEAR_VARS)

LOCAL_MODULE := HuaweiMarket
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

LOCAL_PREBUILT_JNI_LIBS := \
        @lib/$(TARGET_CPU_ABI)/libapppatch.so \
        @lib/$(TARGET_CPU_ABI)/liblocSDK7.so  \
        @lib/$(TARGET_CPU_ABI)/libweibosdkcore.so

include $(BUILD_PREBUILT)

###############################################
include $(CLEAR_VARS)

LOCAL_MODULE := GooglePinyin32bit
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk

LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

LOCAL_PREBUILT_JNI_LIBS := \
        @lib/$(TARGET_CPU_ABI)/liben_data_bundle.so \
        @lib/$(TARGET_CPU_ABI)/libgnustl_shared.so  \
        @lib/$(TARGET_CPU_ABI)/libhmm_gesture_hwr_zh.so \
        @lib/$(TARGET_CPU_ABI)/libhwrword.so \
        @lib/$(TARGET_CPU_ABI)/libpinyin_data_bundle.so

include $(BUILD_PREBUILT)

###############################################
endif