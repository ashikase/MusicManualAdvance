include theos/makefiles/common.mk

TWEAK_NAME = MusicManualAdvance
MusicManualAdvance_FILES = Tweak.xm

# Uncomment the following lines to specify a different compiler
#export SDKTARGET = arm-apple-darwin11
#export TARGET_CXX = clang -ccc-host-triple $(SDKTARGET)
#export TARGET_LD = $(SDKTARGET)-g++
#export TARGET_CODESIGN_ALLOCATE=$(CODESIGN_ALLOCATE)

include $(THEOS_MAKE_PATH)/tweak.mk

distclean: clean
	- rm -f $(THEOS_PROJECT_DIR)/$(APP_ID)*.deb
	- rm -f $(THEOS_PROJECT_DIR)/.theos/packages/*
