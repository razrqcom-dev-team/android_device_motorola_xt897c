$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/motorola/xt897c/device_xt897c.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt897c
PRODUCT_NAME := full_xt897c
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT897
PRODUCT_MANUFACTURER := motorola
