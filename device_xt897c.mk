
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

# most of the stuff is shared with xt897 (gsm)
LOCAL_PATH := device/motorola/xt897

# xt897 overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# xt897c specific overlay (cdma)
DEVICE_PACKAGE_OVERLAYS += device/motorola/xt897c/overlay

#sqlite3
PRODUCT_PACKAGES += \
    sqlite3

#custom settings
PRODUCT_PACKAGES += \
    PhotonQParts

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#misc
PRODUCT_PROPERTY_OVERRIDES += \
    persist.log.aplogd.enable=1 \

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \

#telephony
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=1 \
    ro.config.svlte1x=true \
    persist.radio.eons.enabled=true \
    ro.cdma.nbpcd=0 \
    ro.cdma.home.operator.isnan=1 \
    ro.telephony.gsm-routes-us-smsc=1 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    persist.radio.mode_pref_nv10=1 \
    persist.radio.vrte_logic=2 \
    persist.radio.skip_data_check=1 \
    persist.ril.max.crit.qmi.fails=4 \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.telephony.default_network=10 \
    ro.mot.ignore_csim_appid=true \
    telephony.rilV7NeedCDMALTEPhone=true \
    ro.cdma.subscription=1 \
    DEVICE_PROVISIONED=1 \
    persist.sys.report_gprs_as_edge=1 \
    persist.timed.enable=true

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
    $(LOCAL_PATH)/idc/keypad_8960.idc:system/usr/idc/keypad_8960.idc \
    $(LOCAL_PATH)/idc/gpio-keys.idc:system/usr/idc/gpio-keys.idc

# keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl

# Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/keypad_8960.kcm:system/usr/keychars/keypad_8960.kcm

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

$(call inherit-product, device/motorola/msm8960-common/modules/nfc/nfc.mk)
$(call inherit-product-if-exists, vendor/motorola/xt897/xt897-vendor.mk)

