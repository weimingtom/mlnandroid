LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := mlsocket

LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/../japi
LOCAL_CFLAGS := -DLUA_DL_DLOPEN -DLUA_USE_C89 -DLUA_COMPAT_5_1 -DLUA_COMPAT_5_2 -DLUA_USE_LINUX -DJAVA_ENV -DANDROID -DLUA_COMPAT_ALL

LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := luasocket.c \
            buffer.c \
            auxiliar.c \
            options.c \
            timeout.c \
            io.c \
            usocket.c \
            compat.c \
            except.c \
            inet.c \
            mime.c \
            select.c \
            serial.c \
            tcp.c \
            udp.c

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := lua pthread

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
