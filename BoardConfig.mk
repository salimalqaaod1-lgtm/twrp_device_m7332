DEVICE_PATH := device/mediatek/m7332

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

# التصحيح الأهم: اجعل هذه القيمة false أو احذف السطر تماماً
TARGET_USES_64_BIT_BINDER := false


# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m7332
TARGET_NO_BOOTLOADER := true

# Kernel & DTB
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/dtb
BOARD_PREBUILT_DTBIMAGE := $(DEVICE_PATH)/dtb

# Kernel Settings
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION) --dtb $(TARGET_PREBUILT_DTB)

# الحجم الدقيق بناءً على mmcblk0p10 (40MB)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP Slim Mode (تقليل الحجم لضمان الملاءمة)
TW_THEME := landscape_hdpi
TW_EXTRA_LANGUAGES := false # تعطيل اللغات الإضافية لتوفير مساحة
TW_INCLUDE_CRYPTO := false   # تعطيل التشفير لتقليل الحجم
TW_EXCLUDE_PYTHON := true    # حذف بايثون لتوفير مساحة
TW_EXCLUDE_ENCRYPTED_BACKUPS := true

# Remote & Brightness
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162

# USB
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_HAS_MTP := true

TW_DEVICE_VERSION := Salim_Alqaaod_TV_40MB
