#
# Copyright (C) 2018-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/clover/device.mk)

# Inherit some common Infinity-X stuff
$(call inherit-product, vendor/infinity/config/common_full_tablet.mk)
INFINITY_BUILD_TYPE := UNOFFICIAL
WITH_GAPPS := true
INFINITY_MAINTAINER := SABAR

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := false
TARGET_SCREEN_WIDTH := 1080
TARGET_BUILD_DEVICE_AS_WEBCAM := false
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_DISABLE_EPPE := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_clover
PRODUCT_DEVICE := clover
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi PAD 4
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="clover-user 8.1.0 OPM1.171019.019 V9.6.4.0.ODJCNFD release-keys" \
    BuildFingerprint=Xiaomi/clover/clover:8.1.0/OPM1.171019.019/V9.6.4.0.ODJCNFD:user/release-keys \
    DeviceName=clover \
    DeviceProduct=clover \
    SystemName=clover
