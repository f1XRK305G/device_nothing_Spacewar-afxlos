#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Spacewar device
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Spacewar \
    PRIVATE_BUILD_DESC="Spacewar-user 12 SKQ1.211230.001 1666412462 release-keys"

BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1666412462:user/release-keys

# AfterLife flags
AFTERLIFE_MAINTANER := true

# Blur
TARGET_SUPPORTS_BLUR := true

# FOD
TARGET_UDFPS_ANIMATIONS := true

# GApps
AFTERLIFE_GAPPS := true
WITH_GMS := true

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true
