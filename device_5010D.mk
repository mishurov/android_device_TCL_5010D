# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/TCL/5010D/device.mk)

# Release name
PRODUCT_RELEASE_NAME := 5010D

EXTENDED_FONT_FOOTPRINT := true

PRODUCT_DEVICE := 5010D
PRODUCT_NAME := full_5010D
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 5010D
PRODUCT_MANUFACTURER := TCL
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 854
TARGET_SCREEN_WIDTH       := 480
TARGET_BOOTANIMATION_NAME := 480

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
