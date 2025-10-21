#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE_COMMON=mithorium-common
export DEVICE_SPECIFIED_COMMON=titanium-common
export DEVICE_SPECIFIED_COMMON_DEVICE="vince ysl"

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"