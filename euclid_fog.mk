#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/euclid/config/common_full_phone.mk)

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)

EUCLID_BUILD_TYPE := UNOFFICIAL
EUCLID_MAINTAINER := losshye#EW
TARGET_BOOT_ANIMATION_RES := 720
EUCLID_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_TOUCHGESTURES := true
PRODUCT_NAME := euclid_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/fog_global/fog:13/TKQ1.221114.001/V14.0.5.0.TGEMIXM:user/release-keys
