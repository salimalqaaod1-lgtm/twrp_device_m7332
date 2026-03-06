DEVICE_PATH := device/mediatek/m7332

# المعمارية (32-bit للجهاز MT9632)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

# الكيرنل والـ DTB (استخدام الملفات التي وجدتها)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOTIMG_HEADER_VERSION := 2

# إعدادات الحجم والعناوين (مهمة لجهاز MTK)
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION) --dtb $(TARGET_PREBUILT_DTB)

# إخبار النظام بمكان ملفات التشغيل RC تلقائياً لتجنب خطأ الصلاحيات
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)

# إعدادات TWRP
TW_THEME := landscape_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
