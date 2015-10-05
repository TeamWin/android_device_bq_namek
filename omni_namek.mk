# Inherit device configuration
$(call inherit-product, device/bq/namek/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := namek
PRODUCT_NAME := omni_namek
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris M5.5
