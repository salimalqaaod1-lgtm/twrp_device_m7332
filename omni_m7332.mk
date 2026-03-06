#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from m7332 device configuration
# هذا هو السطر الذي تسبب في الخطأ، قمنا بتصحيحه الآن
$(call inherit-product, device/m7332/twrp_device_m7332/device.mk)

# Inherit from Omni common product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m7332
PRODUCT_NAME := omni_m7332
PRODUCT_BRAND := mediatek
PRODUCT_MODEL := m7332
PRODUCT_MANUFACTURER := mediatek

PRODUCT_GMS_CLIENTID_BASE := android-mediatek

# Fingerprint from your original recovery
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=m7332 \
    PRODUCT_NAME=m7332 \
    PRIVATE_BUILD_DESC="m7332-user 11 RP1A.200720.01
