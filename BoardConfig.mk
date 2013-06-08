# inherit from platform common
-include device/motorola/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/xt897/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/xt897c

# xt897 liblight
TARGET_USES_MOTOROLA_MSM8960_XT897_LIBLIGHT := true

# NFC
BOARD_HAVE_NFC := true

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/motorola/xt897/bluetooth

#TWRP
DEVICE_RESOLUTION := 540x960
