#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rock device
$(call inherit-product, device/xiaomi/rock/device.mk)

PRODUCT_DEVICE := rock
PRODUCT_NAME := omni_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22071219AI
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rock-user 12 SP1A.210812.016 V13.0.8.0.SLUINXM release-keys"

BUILD_FINGERPRINT := Redmi/rock/rock:12/SP1A.210812.016/V13.0.8.0.SLUINXM:user/release-keys
