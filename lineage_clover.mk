#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution-X stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SCREEN_WIDTH := 1440
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_ENABLE_BLUR := false
TARGET_USES_PICO_GAPPS := true

# Inherit device configuration
$(call inherit-product, device/xiaomi/clover/device.mk)

# Build Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="clover-user 8.1.0 OPM1.171019.019 9.7.4 release-keys" \
    BuildFingerprint=xiaomi/clover/clover:8.1.0/OPM1.171019.019/9.7.4/release-keys \
    DeviceProduct=clover

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_clover
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_DEVICE := clover
PRODUCT_MODEL := MI PAD 4
