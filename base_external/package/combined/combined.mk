##############################################################
#
# COMBINED APPLICATION CODE WITH  TMP-SENSOR
# AND LED 
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
COMBINED_VERSION = 'bc57a8efb6f1a96a878ff7f9162ab553ce5dcf29'
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
