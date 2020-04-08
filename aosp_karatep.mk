#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from karatep device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lenovo
PRODUCT_DEVICE := karatep
PRODUCT_MANUFACTURER := lenovo
PRODUCT_NAME := aosp_karatep

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

TARGET_VENDOR_PRODUCT_NAME := karate

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="karatep-user 7.0 NRD90N K33_S231_171114_ROW release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and boot image
BUILD_FINGERPRINT := "Lenovo/karatep/K53:7.0/NRD90N/K53_S231_171114_ROW:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model
    
TARGET_GAPPS_ARCH := arm64    
