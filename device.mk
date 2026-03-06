LOCAL_PATH := device/mediatek/m7332

# نسخ ملفات تعريف الريموت (التي رفعتها أنت)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Generic.kl:recovery/root/system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/AVRCP.kl:recovery/root/system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/ir_config.ini:recovery/root/vendor/etc/ir_config.ini

# إضافة لغات أساسية (الإنجليزية فقط لتوفير مساحة الـ 40MB)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/system/etc/twrp.flags:recovery/root/system/etc/twrp.flags

# استدعاء إعدادات أندرويد الأساسية
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
