$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/lentislte/lentislte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/lentislte/overlay

LOCAL_PATH := device/samsung/lentislte

# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,conn_gadget

PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    init.recovery.usb.rc

# Time Zone data
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_lentislte
PRODUCT_BRAND := Samsung
