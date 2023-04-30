##############################################################
#
# GPIO-TEST
#
##############################################################

#TODO: Fill up the contents below in order to reference the application code repo
GPIOTEST_VERSION = 'ebb66dd92489293e9d147f7cb2055d93094387f9'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
GPIOTEST_SITE = 'git@github.com:ayswariya088/final-project-assignment-ayswariyakannan.git'
GPIOTEST_SITE_METHOD = git
GPIOTEST_GIT_SUBMODULES = YES

define GPIOTEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/gpiotest all

endef

# TODO add the gpio test scripts to the installation steps below
define GPIOTEST_INSTALL_TARGET_CMDS
		
	$(INSTALL) -m 0755 $(@D)/gpiotest/gpiotest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/gpiotest/gpio_led $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
