$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

# Platform
TARGET_BOARD_PLATFORM := mt6737m
TARGET_BOOTLOADER_BOARD_NAME := mt6737m
BOARD_USES_MTK_HARDWARE := true
BOARD_USES_MTK_AUDIO := true
MTK_HARDWARE := true

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_IS_64_BIT := true

# Architecture Extensions
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12831948800
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.mt6735

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

POLICYVERS := 29

# Shims
LINKER_FORCED_SHIM_LIBS += \
    /system/vendor/lib/libui_ext.so|libshim_gui.so
