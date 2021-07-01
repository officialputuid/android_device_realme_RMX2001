# Inherit from common device makefile
$(call inherit-product, device/realme/mt6785-common/mt6785.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay
