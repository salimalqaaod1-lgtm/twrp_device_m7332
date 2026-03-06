#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m7332 device
$(call inherit-product, device/m7332/twrp_device_m7332/device.mk)

PRODUCT_DEVICE := m7332
PRODUCT_NAME := omni_m7332
PRODUCT_BRAND := mediatek
PRODUCT_MODEL := m7332
PRODUCT_MANUFACTURER := mediatek


PRODUCT_GMS_CLIENTID_BASE := android-mediatek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m7332_1g_eu-userdebug 11 RP1A.200720.011 eng.nobody.20221202.155031 test-keys"

BUILD_FINGERPRINT := MediaTek/m7332_1g_eu/m7332:11/RP1A.200720.011/nobody12021551:userdebug/test-keys
