USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/vivaltonfc3g/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hawaii
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := hawaii

# Assert
TARGET_OTA_ASSERT_DEVICE := vivaltonfc3g,G313GN,SM-G313HN,hawaii

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 mem=456M gpt v3d_mem=67108864 pmem=24M@0x9E800000
BOARD_KERNEL_BASE := 0x81e00000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_vivaltonfc3g_rev00_defconfig
TARGET_KERNEL_SOURCE := device/samsung/vivaltonfc3g/kernel

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1161543680
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2424307712
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/vivaltonfc3g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/vivaltonfc3g/bluetooth/libbt_vndcfg_s7270.txt

# Connectivity - Wi-Fi
WPA_BUILD_SUPPLICANT := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b1
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Hardware rendering
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/vivaltonfc3g/configs/egl.cfg
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DEGL_NEEDS_FNW -DHAWAII_HWC
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true

# Audio
BOARD_USES_ALSA_AUDIO := true
#BOARD_USE_SAMSUNG_SEPARATEDSTREAM := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-vivaltonfc3g.hawaii

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/vivaltonfc3g/ril/

# Recovery
TARGET_RECOVERY_INITRC := device/samsung/vivaltonfc3g/ramdisk/recovery/init.recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/vivaltonfc3g/ramdisk/fstab.hawaii_ss_vivaltonfc3g
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/vivaltonfc3g/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/vivaltonfc3g/include

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/vivaltonfc3g/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts
