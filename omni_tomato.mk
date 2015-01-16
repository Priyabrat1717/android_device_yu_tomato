#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := tomato

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/yu/tomato/full_tomato.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tomato device
$(call inherit-product, device/yu/tomato/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tomato
PRODUCT_NAME := omni_tomato
PRODUCT_MANUFACTURER := YU
PRODUCT_BRAND := Android
PRODUCT_MODEL := AO5510


$(call inherit-product-if-exists, vendor/yu/tomato/tomato-vendor.mk)

PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUREKA
TARGET_VENDOR_DEVICE_NAME := YUREKA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUREKA PRODUCT_NAME=YUREKA BUILD_FINGERPRINT=yu/tomato/tomato:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="tomato-user 4.4.4 KTU84P 1227136 release-keys"