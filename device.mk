LOCAL_PATH := device/mediatek/m7332

# نسخ ملفات تعريف الريموت
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Generic.kl:recovery/root/system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/AVRCP.kl:recovery/root/system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/ir_config.ini:recovery/root/vendor/etc/ir_config.ini

# نسخ ملف الأقسام
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# تعريف المنتج - استبدل الأسطر القديمة بهذا السطر فقط
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
