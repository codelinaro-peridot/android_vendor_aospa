#
# Copyright (C) 2026 The AOSPA Project
#
# SPDX-License-Identifier: Apache-2.0
#
# AOSPA product definition for POCO F6 (peridot).
ifeq (aospa_peridot,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/peridot/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := POCO
PRODUCT_DEVICE := peridot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 24069PC21G
PRODUCT_NAME := aospa_peridot

# Bootanimation resolution (AOSPA supports 720/1080/1440/2160).
# POCO F6 panel is 1220 x 2712 -> 1080p class.
TARGET_BOOT_ANIMATION_RES := 1080

# Stock-derived identity (POCO F6 = 24069PC21G, peridot_global).
PRODUCT_SYSTEM_NAME := peridot_global
PRODUCT_SYSTEM_DEVICE := peridot

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="peridot_global-user 16 BP2A.250605.031.A3 OS3.0.6.0.WNPMIXM release-keys" \
    BuildFingerprint=POCO/peridot_global/peridot:16/BP2A.250605.031.A3/OS3.0.6.0.WNPMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

endif