#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a51 device
$(call inherit-product, device/samsung/a51/device.mk)

PRODUCT_DEVICE := a51
PRODUCT_NAME := lineage_a51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A515F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a51nsxx-user 13 TP1A.220624.014 A515FXXU8HWK1 release-keys"

BUILD_FINGERPRINT := samsung/a51nsxx/a51:13/TP1A.220624.014/A515FXXU8HWK1:user/release-keys
