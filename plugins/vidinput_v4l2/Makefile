HAS_LIBV4L = 
CFLAGS += 

PLUGIN_NAME	= v4l2
PLUGIN_FAMILY	= device/videoinput
PLUGIN_LIBS	= vidinput_names.cxx
PLUGIN_SOURCES	= vidinput_v4l2.cxx


ifeq (1,$(HAS_LIBV4L))
PLUGIN_LIBS += -lv4l2
STDCCFLAGS += -DHAS_LIBV4L
endif


include ../../make/plugins.mak
