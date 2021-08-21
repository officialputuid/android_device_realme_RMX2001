##
# Copyright (C) Android Open Source Project
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

# Inherit some common Styx stuff
$(call inherit-product, vendor/styx/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := styx_RMX2001
PRODUCT_DEVICE := RMX2001
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G90T Series
PRODUCT_MANUFACTURER := realme

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2001 \
    PRODUCT_NAME=RMX2001 \
    PRIVATE_BUILD_DESC="full_oppo6785-user 10 QP1A.190711.020 0b36b6c4f9b3bf3b release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
