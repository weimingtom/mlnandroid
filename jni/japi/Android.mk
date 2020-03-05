LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := luajapi

LOCAL_CFLAGS := -std=c99 -DLUA_DL_DLOPEN -DLUA_USE_C89 -DLUA_COMPAT_5_1 -DLUA_COMPAT_ALL -DLUA_USE_LINUX -DJAVA_ENV -DP_ANDROID -DJAVA_CACHE_UD
LOCAL_CFLAGS += -DJ_API_INFO
LOCAL_CFLAGS += -DMEM_INFO

LOCAL_C_INCLUDES := 

#Change C++ file extension as appropriate
LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := 
LOCAL_SRC_FILES += m_utf.c \
            stack.c \
            map.c \
            m_mem.c \
            saes.c \
            utils.c \
            jlog.c \
            debug_info.c \
            jinfo.c \
            assets_reader.c \
            cache.c \
            jfunction.c \
            jbridge.c \
            jtable.c \
            juserdata.c \
            compiler.c \
            message_looper.c \
            isolate.c \
            luajapi.c \

LOCAL_STATIC_LIBRARIES := mlsocket lua

LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv1_CM -lz

include $(BUILD_SHARED_LIBRARY)
