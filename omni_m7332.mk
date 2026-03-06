# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from m7332 device configuration
# تم تعديل المسار هنا ليتطابق مع مجلد mediatek الجديد
$(call inherit-product, device/mediatek/m7332/device.mk)

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
    PRIVATE_BUILD_DESC="m7332-user 11 RP1A.200720.011 20240913.102830 release-keys"

BUILD_FINGERPRINT := mediatek/m7332/m7332:11/RP1A.200720.011/20240913.102830:user/release-keys
