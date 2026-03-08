LOCAL_PATH := device/mediatek/m7332

# نسخ ملفات تعريف الريموت
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Generic.kl:recovery/root/system/usr/keylayout/Generic.kl
 
    $(LOCAL_PATH)/Ir_Config.ini:recovery/root/vendor/etc/ir_Config.ini

# نسخ ملف الأقسام
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab
