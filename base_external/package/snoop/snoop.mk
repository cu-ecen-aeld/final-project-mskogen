
##############################################################
#
# Snoop Application (Middleware)
#
##############################################################

# NOTE: Based off of the aesd-assignments package structure
SNOOP_VERSION = cb122b3bcd73c880c74155de28d0033493b3de69
SNOOP_SITE = git@github.com:mskogen/snoop.git
SNOOP_SITE_METHOD = git
SNOOP_GIT_SUBMODULES = YES

# Build instructions
define SNOOP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

# Install instructions
define SNOOP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/snoop $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/snoop-start-stop $(TARGET_DIR)/etc/init.d/S99snoop
endef

$(eval $(generic-package))
