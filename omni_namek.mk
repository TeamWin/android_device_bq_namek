$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/namek/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    device/bq/namek/kernel:kernel \
    device/bq/namek/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    device/bq/namek/recovery/sbin/healthd:root/sbin/healthd

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := namek
PRODUCT_NAME := omni_namek
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris M5.5
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Aquaris_M55 PRODUCT_NAME=Aquaris_M55
