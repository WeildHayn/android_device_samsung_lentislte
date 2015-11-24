ifneq ($(filter lentislte,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
