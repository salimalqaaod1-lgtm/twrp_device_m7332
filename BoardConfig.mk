DEVICE_PATH := device/mediatek/m7332

# Architecture - Force 32-bit for stability with MT9632
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m7332
TARGET_NO_BOOTLOADER := true

# Kernel - We use the offsets from your original 40MB file
# These values are what the hardware actually expects
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_BOOTIMG_HEADER_VERSION := 2

# Force original Kernel/DTB to fix Remote (0x00BF) and USB (g1)
TARGET_FORCE_PREBUILT_KERNEL := true
BOARD_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
BOARD_PREBUILT_DTB := $(DEVICE_PATH)/dtb
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# USB ConfigFS - Essential for Android 11 detection
BOARD_USE_CONFIGFS := true
TARGET_OTG_CAPABILITIES := true

# Partitions - Based on your successful 40MB recovery upload
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := V2_FIXED_REMOTE
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
