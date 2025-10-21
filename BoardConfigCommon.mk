#
# Copyright (C) 2017-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common mithorium-common
include device/xiaomi/mithorium-common/BoardConfigCommon.mk

DEVICE_COMMON_PATH := device/xiaomi/titanium-common

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8953

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Properties
TARGET_VENDOR_PROP += $(DEVICE_COMMON_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/titanium-common/BoardConfigVendor.mk