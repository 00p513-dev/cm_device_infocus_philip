TARGET_SPECIFIC_HEADER_PATH := device/infocus/philip/include

TARGET_BOARD_PLATFORM := mt6737h

FORCE_32_BIT := false

# Architecture
ifeq ($(FORCE_32_BIT),true)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
else
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
endif

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887436800
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4698144768
BOARD_FLASH_BLOCK_SIZE := 131072

# system proprities
TARGET_SYSTEM_PROP += device/infocus/philip/system.prop

# Camera
USE_CAMERA_STUB := true

# FSTAB
TARGET_RECOVERY_FSTAB := device/infocus/philip/rootdir/fstab.mt6735

# Audio
BOARD_USES_MTK_AUDIO := true

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_SECOND_OFFSET := 0x00e88000
BOARD_KERNEL_TAGS_OFFSET := 0x0df88000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage-dtb
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/infocus/philip
TARGET_KERNEL_CONFIG := if9031_defconfig

#GCC
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-linux-androideabi-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

#sdclang
TARGET_USE_SDCLANG := false
SDCLANG := false

#bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6737h

# Assert
#rip ported recoveries
TARGET_OTA_ASSERT_DEVICE := philip

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
# BOARD_BLUETOOTH_BDROID_HCILP_INCLUDED := 0

# CMHW
#BOARD_USES_CYANOGEN_HARDWARE := true
#BOARD_HARDWARE_CLASS += device/moto/panelli/cmhw

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

#dexopt
WITH_DEXPREOPT := false

# Display
BOARD_EGL_CFG := /vendor/infocus/philip/proprietary/vendor/lib/egl/egl.cfg
USE_OPENGL_RENDERER:=true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.5.0
MTK_GPU_VERSION := mali midgard r18p0
OVERRIDE_RS_DRIVER := libRSDriver_mtk.so

# Mediatek support
MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
TARGET_LDPRELOAD += libmtk_symbols.so

# Media
TARGET_OMX_LEGACY_RESCALING := true

# GPS
BOARD_GPS_LIBRARIES := true

# Recovery
BOARD_NO_SECURE_DISCARD := true
TARGET_USERIMAGES_USE_EXT4 := true

# RIL
#BOARD_RIL_CLASS := ../../../device/moto/panelli/ril

# SELinux
ifeq ($(SELINUX_PERMISSIVE),true)
BOARD_KERNEL_CMDLINE +=  androidboot.selinux=permissive
endif
BOARD_SEPOLICY_DIRS := device/infocus/philip/sepolicy
BOARD_SECCOMP_POLICY += device/infocus/philip/seccomp

# Wireless
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Misc
EXTENDED_FONT_FOOTPRINT := true

