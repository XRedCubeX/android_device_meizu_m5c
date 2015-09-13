USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/alps/k05ts_a/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6753
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT_CPU := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOOTLOADER_BOARD_NAME := Auxus_PRIME_201

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
#extracted from stock recovery
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x03f88000

#extracted from /proc/partinfo
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1107296256
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
#pagesize * 64
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_INITRC := device/alps/k05ts_a/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/alps/k05ts_a/recovery/recovery.fstab
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness\"
