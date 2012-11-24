# Copyright (C) 2009 The Android Open Source Project
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

#
# This file is the build configuration for a full Android
# build for sapphire hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

DEVICE_PACKAGE_OVERLAYS += device/samsung/cooper/overlay

## Media
PRODUCT_PACKAGES += \
    libOmxCore \
    libmm-omxcore \
    libOmxVidEnc \
    libstagefrighthw

## Display
PRODUCT_PACKAGES += \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    hwcomposer.msm7x27 \
    power.msm7x27 \
    libgenlock \
    liboverlay \
    libtilerenderer \
    libQcomUI

## Audio
PRODUCT_PACKAGES += \
    audio_policy.cooper \
    audio.primary.cooper \
    libaudioutils

## Camera
PRODUCT_PACKAGES += \
    libcamera \
    camera.cooper \
    LegacyCamera

# Other
PRODUCT_PACKAGES += \
    make_ext4fs \
    brcm_patchram_plus \
    bdaddr_read \
    setup_fs \
    librpc \
    FileManager

## Vold config
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

## Camera and media
PRODUCT_COPY_FILES += \
   device/samsung/cooper/prebuilt/system/lib/libmmipl.so:system/lib/libmmipl.so \
   device/samsung/cooper/prebuilt/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
   device/samsung/cooper/prebuilt/system/lib/libarccamera.so:system/lib/libarccamera.so \
   device/samsung/cooper/prebuilt/system/lib/libcamera.so:system/lib/libcamera.so \
   device/samsung/cooper/prebuilt/system/lib/libs3cjpeg.so:system/lib/libs3cjpeg.so \
   device/samsung/cooper/prebuilt/system/lib/liboemcamera.so:system/lib/liboemcamera.so \
   device/samsung/cooper/prebuilt/system/lib/libmmosal.so:system/lib/libmmosal.so \
   device/samsung/cooper/prebuilt/system/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
   device/samsung/cooper/prebuilt/system/lib/libmmparser.so:system/lib/libmmparser.so

## Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

## Board-specific init
PRODUCT_COPY_FILES += \
    device/samsung/cooper/ramdisk/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/cooper/ramdisk/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/cooper/ramdisk/lib/modules/sec_param.ko:root/lib/modules/sec_param.ko \
    device/samsung/cooper/ramdisk/COOPER.rle:root/COOPER.rle \
    device/samsung/cooper/prebuilt/system/lib/modules/zram.ko:system/lib/modules/zram.ko \
    device/samsung/cooper/prebuilt/system/lib/modules/cifs.ko:system/lib/modules/cifs.ko \
    device/samsung/cooper/prebuilt/system/lib/modules/tun.ko:system/lib/modules/tun.ko \
    device/samsung/cooper/ramdisk/init.gt-s5830board.rc:root/init.gt-s5830board.rc \
    device/samsung/cooper/ramdisk/init.gt-s5830board.usb.rc:root/init.gt-s5830board.usb.rc \
    device/samsung/cooper/ramdisk/ueventd.gt-s5830board.rc:root/ueventd.gt-s5830board.rc

## wifi module
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/wifi/ar6000.ko:system/wifi/ar6000.ko \
    device/samsung/cooper/prebuilt/system/wifi/ath6k/AR6003/hw2.0/athtcmd_ram.bin:system/wifi/ath6k/AR6003/hw2.0/athtcmd_ram.bin \
    device/samsung/cooper/prebuilt/system/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77:system/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77 \
    device/samsung/cooper/prebuilt/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin:system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin \
    device/samsung/cooper/prebuilt/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.01:system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.01 \
    device/samsung/cooper/prebuilt/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.02:system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.02 \
    device/samsung/cooper/prebuilt/system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.03:system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin.03 \
    device/samsung/cooper/prebuilt/system/wifi/ath6k/AR6003/hw2.0/data.patch.bin:system/wifi/ath6k/AR6003/hw2.0/data.patch.bin \
    device/samsung/cooper/prebuilt/system/wifi/ath6k/AR6003/hw2.0/otp.bin.z77:system/wifi/ath6k/AR6003/hw2.0/otp.bin.z77 \
    device/samsung/cooper/prebuilt/system/bin/hostapd:system/bin/hostapd \
    device/samsung/cooper/prebuilt/system/bin/wlan_mac:system/bin/wlan_mac \
    device/samsung/cooper/prebuilt/system/bin/wlan_tool:system/bin/wlan_tool \
    device/samsung/cooper/prebuilt/system/bin/wmiconfig:system/bin/wmiconfig

## Wifi Stuff
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/cooper/prebuilt/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/samsung/cooper/prebuilt/system/etc/wifi/dhcpcd.conf:system/etc/wifi/dhcpcd.conf \
    device/samsung/cooper/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

## Media
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/samsung/cooper/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/samsung/cooper/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/cooper/prebuilt/system/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/samsung/cooper/prebuilt/system/etc/hosts:system/etc/hosts \
    device/samsung/cooper/prebuilt/system/etc/sysctl.conf:system/etc/sysctl.conf \
    device/samsung/cooper/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml

## Omx
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/samsung/cooper/prebuilt/system/lib/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \
    device/samsung/cooper/prebuilt/system/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/samsung/cooper/prebuilt/system/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    device/samsung/cooper/prebuilt/system/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    device/samsung/cooper/prebuilt/system/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    device/samsung/cooper/prebuilt/system/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
    device/samsung/cooper/prebuilt/system/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    device/samsung/cooper/prebuilt/system/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    device/samsung/cooper/prebuilt/system/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so


## keymap
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/cooper/prebuilt/system/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    device/samsung/cooper/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/samsung/cooper/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/cooper/prebuilt/system/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl

## keychar
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/usr/keylayout/qwerty.kcm:system/usr/keylayout/qwerty.kcm \
    device/samsung/cooper/prebuilt/system/usr/keylayout/qwerty2.kcm:system/usr/keylayout/qwerty2.kcm \
    device/samsung/cooper/prebuilt/system/usr/keylayout/Virtual.kcm:system/usr/keylayout/Virtual.kcm \
    device/samsung/cooper/prebuilt/system/usr/keylayout/Generic.kcm:system/usr/keylayout/Generic.kcm

## Touchscreen
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/usr/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

## Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/etc/firmware/BCM2049C0_003.001.031.0088.0094.hcd:system/bin/BCM2049C0_003.001.031.0088.0094.hcd \
    device/samsung/cooper/prebuilt/system/etc/firmware/BCM2049C0_003.001.031.0088.0094.hcd:system/etc/firmware/BCM2049C0_003.001.031.0088.0094.hcd

## Sensor
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/bin/gpsd:system/bin/gpsd \
    device/samsung/cooper/prebuilt/system/lib/hw/sensors.cooper.so:system/lib/hw/sensors.cooper.so \
    device/samsung/cooper/prebuilt/system/bin/qmuxd:system/bin/qmuxd \
    device/samsung/cooper/prebuilt/system/bin/gpsd:system/vendor/bin/gpsd \
    device/samsung/cooper/prebuilt/system/bin/memsicd:system/bin/memsicd

## 3D
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/samsung/cooper/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/samsung/cooper/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/samsung/cooper/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/samsung/cooper/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/samsung/cooper/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/samsung/cooper/prebuilt/system/lib/libC2D2.so:system/lib/libC2D2.so \
    device/samsung/cooper/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/samsung/cooper/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/samsung/cooper/prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg

## GPU firmware
PRODUCT_COPY_FILES += \
	device/samsung/cooper/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	device/samsung/cooper/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw

## Other
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/bin/get_macaddrs:system/bin/get_macaddrs \
    device/samsung/cooper/prebuilt/system/lib/hw/lights.default.so:system/lib/hw/lights.default.so \
    device/samsung/cooper/prebuilt/system/lib/hw/gps.msm7x27.so:system/lib/hw/gps.msm7x27.so

## ril
PRODUCT_COPY_FILES += \
    device/samsung/cooper/prebuilt/system/lib/libdiag.so:system/lib/libdiag.so \
    device/samsung/cooper/prebuilt/system/lib/libsec-ril.so:system/lib/libsec-ril.so \
    device/samsung/cooper/prebuilt/system/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/cooper/prebuilt/system/lib/libril.so:system/lib/libril.so

# Misc packages
PRODUCT_PACKAGES += \
	Torch \
	Gallery2

## Prebuilt App
##PRODUCT_COPY_FILES += \
##    device/samsung/cooper/prebuilt/system/app/UsbMassStorageToggle.apk:system/app/UsbMassStorageToggle.apk

PRODUCT_PROPERTY_OVERRIDES += \
	ro.rommanager.developerid=cyanogenmod \
	keyguard.no_require_sim=true \
	ro.com.android.dateformat=dd-MM-yyyy \

# LDPI assets
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Misc properties
# events_per_sec: default 90
PRODUCT_PROPERTY_OVERRIDES += \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
	ro.com.google.clientidbase=android-google \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.setupwizard.enterprise_mode=1 \
	ro.com.android.dateformat=MM-dd-yyyy \
	ro.com.android.dataroaming=false \
	ro.cm.version=CyanogenMod9.1 \
	ro.modversion=CyanogenMod9.1

PRODUCT_COPY_FILES += \
	device/samsung/cooper/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip

# Google Apps
PRODUCT_COPY_FILES += \
	device/samsung/cooper/prebuilt/system/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
	device/samsung/cooper/prebuilt/system/app/GenieWidget.apk:system/app/GenieWidget.apk \
	device/samsung/cooper/prebuilt/system/app/Gmail.apk:system/app/Gmail.apk \
	device/samsung/cooper/prebuilt/system/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
	device/samsung/cooper/prebuilt/system/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
	device/samsung/cooper/prebuilt/system/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
	device/samsung/cooper/prebuilt/system/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
	device/samsung/cooper/prebuilt/system/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
	device/samsung/cooper/prebuilt/system/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
	device/samsung/cooper/prebuilt/system/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
	device/samsung/cooper/prebuilt/system/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
	device/samsung/cooper/prebuilt/system/app/MediaUploader.apk:system/app/MediaUploader.apk \
	device/samsung/cooper/prebuilt/system/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
	device/samsung/cooper/prebuilt/system/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
        device/samsung/cooper/prebuilt/system/app/SetupWizard.apk:system/app/SetupWizard.apk \
        device/samsung/cooper/prebuilt/system/app/Talk.apk:system/app/Talk.apk \
	device/samsung/cooper/prebuilt/system/app/PlayStore.apk:system/app/PlayStore.apk \
        device/samsung/cooper/prebuilt/system/app/VoiceSearch.apk:system/app/VoiceSearch.apk


PRODUCT_COPY_FILES += \
        device/samsung/cooper/prebuilt/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
        device/samsung/cooper/prebuilt/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	 device/samsung/cooper/prebuilt/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
        device/samsung/cooper/prebuilt/system/etc/g.prop:system/etc/g.prop

PRODUCT_COPY_FILES += \
        device/samsung/cooper/prebuilt/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
        device/samsung/cooper/prebuilt/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
        device/samsung/cooper/prebuilt/system/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar

PRODUCT_COPY_FILES += \
        device/samsung/cooper/prebuilt/system/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
        device/samsung/cooper/prebuilt/system/lib/libfrsdk.so:system/lib/libfrsdk.so \
        device/samsung/cooper/prebuilt/system/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
        device/samsung/cooper/prebuilt/system/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
        device/samsung/cooper/prebuilt/system/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
        device/samsung/cooper/prebuilt/system/lib/libvoicesearch.so:system/lib/libvoicesearch.so

## GPS
PRODUCT_COPY_FILES += \
	device/samsung/cooper/prebuilt/system/etc/gps.conf:system/etc/gps.conf
