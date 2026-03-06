LOCAL_PATH := device/mediatek/m7332

# 1. نسخ ملفات تعريف أزرار الريموت كنترول (التي رفعتها أنت)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Generic.kl:recovery/root/system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/AVRCP.kl:recovery/root/system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/ir_config.ini:recovery/root/vendor/etc/ir_config.ini

# 2. نسخ ملف خريطة الأقسام (fstab) لكي يرى TWRP الذاكرة الداخلية
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# 3. استدعاء مكتبات أندرويد الأساسية اللازمة للبناء
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
