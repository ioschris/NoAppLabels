THEOS_DEVICE_IP = 192.168.10.106
ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoAppLabels
NoAppLabels_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
