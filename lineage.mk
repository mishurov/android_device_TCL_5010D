## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := 5010D

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/TCL/5010D/device_5010D.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 5010D
PRODUCT_NAME := lineage_5010D
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 5010D
PRODUCT_MANUFACTURER := TCL

