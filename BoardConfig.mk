#
# BoardConfig.mk - V2 Fixed for Remote and USB
# Device: m7332 (MT9632)
#

DEVICE_PATH := device/m7332/twrp_device_m7332

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

# Kernel - Using the original 40MB file structure
# These offsets are confirmed for your hardware
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_BOOTIMG_HEADER_VERSION := 2

# Force original Kernel and DTB extracted from recovery.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION) --dtb $(BOARD_PREBUILT_DTB)

# USB ConfigFS - Essential for Android 11 detection
BOARD_USE_CONFIGFS := true
TARGET_OTG_CAPABILITIES := true

# Partitions - Matches your original 40MB dump
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := V2_STABLE_REMOTE_0x00BF
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

# Debugging and Stability
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
