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

# Inherit from pdx223 device
$(call inherit-product, device/sony/pdx223/device.mk)

PRODUCT_DEVICE := pdx223
PRODUCT_NAME := omni_pdx223
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Pdx223
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pdx223-user 12 SKQ1.220714.001 1 dev-keys"

BUILD_FINGERPRINT := Sony/pdx223/pdx223:12/SKQ1.220714.001/1:user/dev-keys
