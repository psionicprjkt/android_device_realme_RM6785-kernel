ifneq ($(filter RMX2001 RMX2151 RM6785,$(TARGET_DEVICE)),)
ifeq ($(TARGET_NO_KERNEL_OVERRIDE),true)

IMAGE := device/realme/$(TARGET_DEVICE)-kernel/Image.gz

$(PRODUCT_OUT)/kernel: $(IMAGE)
	cp $(IMAGE) $@

droidcore: $(PRODUCT_OUT)/kernel

endif
endif
