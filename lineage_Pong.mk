#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := Nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.250415.001/2511191654:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=Pong \
    SystemDevice=Pong \
    SystemName=Pong

# Singing keys
$(call inherit-product, vendor/lineage-priv/keys/keys.mk)

#Mist-OS-Flags
MISTOS_MAINTAINER := Ghostca1n
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_USES_MINI_GAPPS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := true 

#Phone Info
ro.mist.display=1080 x 2412, 120 hz
ro.mist.battery=4700mah
ro.mist.soc=Snapdragon® 8+Gen 1
ro.mist.camera=50MP + 50MP
ro.mist.front=32MP
ro.mist.platform=SM8475-AB
ro.mist.screen=6.7' LTPO OLED
ro.mist.device.name=Nothing Phone 2
