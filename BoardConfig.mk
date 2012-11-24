# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

TARGET_KERNEL_CONFIG := cyanogenmod_cooper_defconfig
TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX -DSAMSUNG_CAMERA_QCOM
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD -DQCOM_ICS_COMPAT -DSAMSUNG_CAMERA_QCOM

TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
TARGET_SPECIFIC_HEADER_PATH += device/samsung/cooper/include

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# for now
USE_CAMERA_STUB := false

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_LIBRIL := device/samsung/cooper/prebuilt/system/lib/libril.so
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/cooper/recovery_kernel
TARGET_RECOVERY_INITRC := device/samsung/cooper/recovery.rc
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# browser/yt fix
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true

# Graphics
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_EGL_CFG := device/samsung/cooper/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
	
# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_AUDIO_SPEECH := true

# TARGET_USES_GENLOCK := true

TARGET_BOOTLOADER_BOARD_NAME := cooper

# assert
TARGET_OTA_ASSERT_DEVICE := cooper,GT-S5830

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# FM
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := brcm2049

# Wifi related defines
WPA_SUPPLICANT_VERSION                  := VER_0_6_X
WIFI_DRIVER_MODULE_NAME			:= ar6000
WIFI_AP_DRIVER_MODULE_NAME              := ar6000
BOARD_HAVE_SAMSUNG_WIFI                 := true
BOARD_WEXT_NO_COMBO_SCAN		:= true
BOARD_WPA_SUPPLICANT_DRIVER		:= WEXT
WIFI_DRIVER_MODULE_ARG                  := "ifname=wlan0 fwmode=1"
BOARD_HOSTAPD_DRIVER			:= WEXT
WIFI_AP_DRIVER_MODULE_ARG               := "ifname=athap0 fwmode=2"
BOARD_WLAN_DEVICE                       := ath6kl
WIFI_DRIVER_MODULE_PATH                 := /system/wifi/ar6000.ko
WIFI_AP_DRIVER_MODULE_PATH              := /system/wifi/ar6000.ko
BOARD_WLAN_CHIP_AR6003                  := true
BOARD_WLAN_ATHEROS_SDK	                := AR6kSDK.3.1/AR6kSDK.build_3.1_RC.563

# Wi-Fi Hotspot
BOARD_HAVE_LEGACY_HOSTAPD := true
BOARD_HOSTAPD_NO_ENTROPY := true

# RIL
BOARD_USES_LEGACY_RIL := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# Other
TARGET_FORCE_CPU_UPLOAD := true
TARGET_PROVIDES_INIT_TARGET_RC := true

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 4096

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBLIGHTS := true
BOARD_HAVE_SAMSUNG_AUDIO := true

BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH  := "/sys/devices/platform/usb_mass_storage/lun0/file"

DISABLE_DEXPREOPT := true
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/cooper/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/cooper/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/samsung/cooper/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/cooper/recovery/recovery.fstab
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/cooper/recovery/recovery_kernel

BOARD_HAS_DOWNLOAD_MODE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 219938816
BOARD_USERDATAIMAGE_PARTITION_SIZE := 190054400
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_KERNEL_CMDLINE := 
BOARD_BML_BOOT := "/dev/block/bml8"
BOARD_BML_RECOVERY := "/dev/block/bml9"
BOARD_RECOVERY_HANDLES_MOUNT := true

# Fixes colors in panorama
BOARD_CPU_COLOR_CONVERT := true

# Samsung has weird framebuffer
TARGET_NO_INITLOGO := true

# Bootanimation
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
