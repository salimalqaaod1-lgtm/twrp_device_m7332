LOCAL_PATH := device/mediatek/m7332

# نسخ ملف التردد الخاص بالريموت (تأكد من وجود الملف في المستودع)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ir_config.ini:recovery/root/vendor/etc/ir_config.ini

# تم تعطيل النسخ اليدوي لملف الـ RC لأن النظام سيدمجه تلقائياً من المجلد
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/init.recovery.m7332.rc:root/init.recovery.m7332.rc
