#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from mido device
$(call inherit-product, device/xiaomi/mido/device.mk)

# Inherit some common SuperiorExtendedOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SHIPS_PREBUILT_GCAM := false
TARGET_INCLUDE_MATLOG := true
USE_MOTO_CALCULATOR := false
TARGET_SUPPORTS_BLUR := true
SUPERIOR_UDFPS_ANIMATIONS := false
USE_MOTO_CLOCK := false
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
USE_QUICKPIC := false
USE_DUCKDUCKGO := false
USE_ViaBrowser := true
TARGET_BUILD_VIMUSIC := true

# Debloat
TARGET_DEBLOAT := true

# Gapps
BUILD_WITH_GAPPS := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mido
PRODUCT_NAME := superior_mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="husky-user 14 UD1A.231105.004/11010374 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/husky/husky:14/UD1A.231105.004/11010374:user/release-keys
