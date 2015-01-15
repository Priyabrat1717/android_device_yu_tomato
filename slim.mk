# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := tomato

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/yu/tomato/full_tomato.mk)

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tomato
PRODUCT_NAME := slim_tomato
PRODUCT_BRAND := YU
PRODUCT_MODEL := YUREKA
PRODUCT_MANUFACTURER := YU
PRODUCT_RESTRICT_VENDOR_FILES := false


PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUREKA
TARGET_VENDOR_DEVICE_NAME := YUREKA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUREKA PRODUCT_NAME=YUREKA BUILD_FINGERPRINT=yu/tomato/tomato:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="tomato-user 4.4.4 KTU84P 1227136 release-keys"

ifeq ($(SIGN_BUILD),true)
# Signed builds gets a special boot animation because they are special.
PRODUCT_BOOTANIMATION := device/yu/tomato/bootanimation.zip
endif
