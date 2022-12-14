#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from begoniain device
$(call inherit-product, device/xiaomi/begoniain/device.mk)

PRODUCT_DEVICE := begoniain
PRODUCT_NAME := omni_begoniain
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="begoniain-user 11 RP1A.200720.011 V12.5.5.0.RGGINXM release-keys"

BUILD_FINGERPRINT := Redmi/begoniain/begoniain:11/RP1A.200720.011/V12.5.5.0.RGGINXM:user/release-keys
