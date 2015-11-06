LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
     $(call project-path-for,qcom-audio)/hal/$(TARGET_BOARD_PLATFORM)/ \
     $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \
		 hardware/libhardware/include

LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libdl

LOCAL_SRC_FILES := audio_amplifier.c

LOCAL_MODULE := audio_amplifier.$(TARGET_BOARD_PLATFORM)

LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
