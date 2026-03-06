# Inherit from TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m7332 device configuration
$(call inherit-product, device/mediatek/m7332/device.mk)

# Device identifier
PRODUCT_DEVICE := m7332
PRODUCT_NAME := omni_m7332
PRODUCT_BRAND := mediatek
PRODUCT_MODEL := m7332
PRODUCT_MANUFACTURER := mediatek

# Fingerprint from your original recovery (لضمان التوافق مع النظام الأصلي)
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=m7332 \
    PRODUCT_NAME=m7332 \
    PRIVATE_BUILD_DESC="m7332-user 11 RP1A.200720.011 20240913.102830 release-keys"

BUILD_FINGERPRINT := mediatek/m7332/m7332:11/RP1A.200720.011/20240913.102830:user/release-keys
