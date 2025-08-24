#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit Infinix XPAD device stuff
$(call inherit-product, device/itel/P1102GT/P1102GT.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_P1102GT
PRODUCT_DEVICE := itel-P1102GT
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel P1102GT
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-Itel
