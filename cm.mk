TARGET_BOOTANIMATION_NAME := mdpi

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_cheshire.mk)

# Inherit some common google stuff.
# $(call inherit-product, vendor/google/gapps.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/cooper/full_cooper.mk)

PRODUCT_NAME	:= cm_cooper
PRODUCT_DEVICE	:= cooper
