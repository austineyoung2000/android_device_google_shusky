#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := husky
DEVICE_PATH := device/google/shusky
VENDOR_PATH := vendor/google/husky
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Addons
TARGET_HAS_UDFPS := true

# Gms 
WITH_GMS := true

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Ship Google Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true

RISING_MAINTAINER=EliteDarkKaiser

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="husky-user 15 AP4A.241205.013 12621605 release-keys" \
    BuildFingerprint=google/husky/husky:15/AP4A.241205.013/12621605:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
