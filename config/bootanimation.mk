ifeq ($(ZERO_BUILD), mata)
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/common/bootanimation/bootanimation1312.zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip
endif
