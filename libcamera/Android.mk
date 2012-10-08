LOCAL_LDLIBSLOCAL_PATH:= $(call my-dir)
LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS    := optional
LOCAL_MODULE_PATH    := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE         := camera.cooper
LOCAL_SRC_FILES      := cameraHAL.cpp
LOCAL_PRELINK_MODULE := false

LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libui libhardware libcamera_client
##TARGET_GLOBAL_LDFLAGS += -L$(LOCAL_PATH) -lcamera
LOCAL_LDFLAGS += -L$(LOCAL_PATH) -lcamera
LOCAL_C_INCLUDES := $(TOP)/frameworks/base/include \
			hardware/qcom/display/libgralloc

ifeq ($(BOARD_HAVE_HTC_FFC), true)
    LOCAL_CFLAGS += -DHTC_FFC
endif
ifeq ($(BOARD_USE_REVERSE_FFC), true)
    LOCAL_CFLAGS += -DREVERSE_FFC
endif

include $(BUILD_SHARED_LIBRARY)
