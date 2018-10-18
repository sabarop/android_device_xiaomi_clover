#
# Copyright 2018 The Android Open Source Project
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

include device/xiaomi/sdm660-common/PlatformConfig.mk

DEVICE_PATH := device/xiaomi/clover

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# Props
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_clover
TARGET_RECOVERY_DEVICE_MODULES := libinit_clover

# Manifest 
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Custom Bootimg for prebuilt kernel
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/clover
TARGET_KERNEL_CONFIG := clover-perf_defconfig
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
