#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/umi/device.mk)

# Inherit some common WaveOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/dot/config/common.mk)

# Include PixelExperience common configuration
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_GAPPS := false
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dot_umi
PRODUCT_DEVICE := umi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys
