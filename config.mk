#
# Copyright (C) 2025-2026 AxionOS
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PACKAGES += \
    AxionFx \
    libaxionfxaidl \
    libaxionfx_legacy

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system_ext/priv-app/AxionFx/AxionFx.apk \
    system_ext/etc/permissions/privapp-permissions-axionfx.xml \
    vendor/lib/soundfx/libaxionfxaidl.so \
    vendor/lib64/soundfx/libaxionfxaidl.so \
    vendor/lib/soundfx/libaxionfx_legacy.so \
    vendor/lib64/soundfx/libaxionfx_legacy.so
