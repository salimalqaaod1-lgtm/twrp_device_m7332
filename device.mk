#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/mediatek/m7332
# Inherit TWRP common parts
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit AOSP base
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Remote Control Configs - نسخ ملفات التردد 0x00BF والتعريفات
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/u_irt_keymap.kl:recovery/root/system/usr/keylayout/u_irt_keymap.kl \
    $(LOCAL_PATH)/prebuilt/ir_config.ini:recovery/root/vendor/etc/ir_config.ini

# Device Characteristics
PRODUCT_CHARACTERISTICS := tv

# Device Identifiers
PRODUCT_NAME := omni_m7332
PRODUCT_DEVICE := m7332
PRODUCT_BRAND := mediatek
PRODUCT_MODEL := M7332_TV
PRODUCT_MANUFACTURER := mediatek
