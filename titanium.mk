#
# Copyright (C) 2017-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mithorium-common
$(call inherit-product, device/xiaomi/mithorium-common/mithorium.mk)

# Audio configuration
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Camera
PRODUCT_PACKAGES += \
    camera.msm8953

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.xiaomi_vince

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Input
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/keylayout/,$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/titanium-common/titanium-common-vendor.mk)