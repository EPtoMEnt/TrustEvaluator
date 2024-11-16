export THEOS_PACKAGE_SCHEME = rootless
export ARCHS = arm64 arm64e
export TARGET = iphone:15.6:15.0
export GO_EASY_ON_ME = 1
export COPYFILE_DISABLE=1

INSTALL_TARGET_PROCESSES = profiled

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TrustEvaluator
TrustEvaluator_PrivateFrameworks = ManagedConfiguration
TrustEvaluator_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
