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
BOARD_BOOTIMG_HEADER_VERSION := 0
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/dtb
BOARD_PREBUILT_DTBIMAGE := $(DEVICE_PATH)/dtb

# Kernel Settings
BOARD_KERNEL_CMDLINE := androidboot.boot_devices=mstar_mci.0 buildvariant=userdebug
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_BOOTIMG_HEADER_VERSION := 0

# الحجم الدقيق بناءً على mmcblk0p10 (40MB)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP Display Settings
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 720
TW_THEME := landscape_mdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
TW_INPUT_BLACKLIST := "hbtp_vm" # لتجنب تداخل تعريفات اللمس الوهمية
TW_NO_SCREEN_TIMEOUT := true    # لكي لا تنطفئ الشاشة وتضطر للبحث عن زر التشغيل


# USB
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_HAS_MTP := true

TW_DEVICE_VERSION := Salim_Alqaaod_TV_40MB
