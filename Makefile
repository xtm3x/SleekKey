GO_EASY_ON_ME = 1
export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang::8.1

include theos/makefiles/common.mk

TWEAK_NAME = SleekKey
SleekKey_FILES = Tweak.xm
SleekKey_FRAMEWORKS = UIKit
ARCHS = armv7 arm64

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall backboardd"
SUBPROJECTS += sleekkey
include $(THEOS_MAKE_PATH)/aggregate.mk
