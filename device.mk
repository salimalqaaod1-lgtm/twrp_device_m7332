LOCAL_PATH := device/mediatek/m7332

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Generic.kl:recovery/root/system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/AVRCP.kl:recovery/root/system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/ir_config.ini:recovery/root/vendor/etc/ir_config.ini
