#
# Copyright (C) 2011 The Android Open-Source Project
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


#RUN KERNEL HERE



# Install smba1002 kernel modules from prebuilt
$(call inherit-product, device/malata/smba1002/smba1002-modules.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk) <--DO WE NEED?

# Inherit from smba_common
$(call inherit-product, device/malata/smba_common/device-common.mk)

# Inherit from vendor specific if exists
$(call inherit-product-if-exists, vendor/malata/smba1002/smba1002-vendor.mk)

# Camera
PRODUCT_PACKAGES += \
	Camera

DEVICE_PACKAGE_OVERLAYS += \
	device/malata/smba1002/overlay

PRODUCT_LOCALES := en_US

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120
    ro.zram.default=18

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_COPY_FILES += \
    device/malata/smba1002/prebuilt/ramdisk/init.harmony.rc:root/init.harmony.rc

# Harmony Configs
PRODUCT_COPY_FILES += \
   device/malata/smba1002/prebuilt/vold.fstab:system/etc/vold.fstab \
   device/malata/smba1002/prebuilt/ramdisk/fstab.harmony:root/fstab.harmony \
   device/malata/smba1002/prebuilt/03sysctl:system/etc/init.d/03sysctl \
   device/malata/smba1002/prebuilt/test.mp4:system/etc/test.mp4 \
   device/malata/smba1002/prebuilt/99avp_hack:system/etc/init.d/99avp_hack \
   device/malata/smba1002/prebuilt/ntfs-3g:system/xbin/ntfs-3g
        
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

#Set default.prop properties for root + adb
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
    ro.allow.mock.location=1 \
	persist.service.adb.enable=1

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	persist.service.adb.enable=1