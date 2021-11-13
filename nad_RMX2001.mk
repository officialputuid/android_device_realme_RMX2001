#
# Copyright (C) Android Open Source Project
# Copyright (C) NusantaraROM Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2001/device.mk)

# Call proprietary blob setup
$(call inherit-product, vendor/realme/RMX2001/RMX2001-vendor.mk)

# Inherit some common NusantaraProject stuff.
TARGET_USES_BLUR := true
NAD_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := nad_RMX2001
PRODUCT_DEVICE := RMX2001
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G90T Series
PRODUCT_MANUFACTURER := realme

# Build info
BUILD_FINGERPRINT := "alps/sys_oplus_mssi_64_cn/oplus_mssi_64_cn:11/RP1A.200720.011/1607914664672:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2001 \
    PRODUCT_NAME=RMX2001 \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user 11 RP1A.200720.011 1607914664672 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
