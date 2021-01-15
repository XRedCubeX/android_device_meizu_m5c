# Kernel
TARGET_IS_64_BIT := true
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_NAME := mt6737
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_TAGS_OFFSET := 0x0df88000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --board $(BOARD_NAME) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --second_offset 0x00e88000

# Kernel properties
#TARGET_KERNEL_SOURCE := kernel/meizu/m5c
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := m5c_defconfig
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/board/Image.gz-dtb
