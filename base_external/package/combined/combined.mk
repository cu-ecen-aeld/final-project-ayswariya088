##############################################################
#
# COMBINED APPLICATION CODE WITH  TMP-SENSOR
# AND LED 
##############################################################

#TODO: Fill up the contents below in order to reference your final project  assignment  git contents
COMBINED_VERSION = 'ebb66dd92489293e9d147f7cb2055d93094387f9'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
COMBINED_SITE = 'git@github.com:ayswariya088/final-project-assignment-ayswariyakannan.git'
COMBINED_SITE_METHOD = git
COMBINED_GIT_SUBMODULES = YES

define COMBINED_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/combined all

endef

# TODO add your combined code utilities/scripts to the installation steps below
define COMBINED_INSTALL_TARGET_CMDS

        $(INSTALL) -m 0755 $(@D)/combined/combined_code $(TARGET_DIR)/usr/bin

endef

$(eval $(generic-package))
