##############################################################
#
# TMP-SENSOR
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
TMP_SENSOR_VERSION = '9841eb7de5aeac969b934f6b841a26dcf4c417d6'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
TMP_SENSOR_SITE = 'git@github.com:ayswariya088/final-project-assignment-ayswariyakannan.git'
TMP_SENSOR_SITE_METHOD = git
TMP_SENSOR_GIT_SUBMODULES = YES

define TMP_SENSOR_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/tmp_sensor all

endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define TMP_SENSOR_INSTALL_TARGET_CMDS
		
	$(INSTALL) -m 0755 $(@D)/tmp_sensor/tmp_sensor $(TARGET_DIR)/usr/bin
	
endef

$(eval $(generic-package))
