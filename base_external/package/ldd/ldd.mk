##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = a849ce0c331cb492fc5966a1731ba7354df52c94
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Yahia-Derbala.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull misc-modules
LDD_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR) ARCH=$(KERNEL_ARCH)


define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(TARGET_DIR)/etc/modules-helpers/
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/etc/modules-helpers/scull_load
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/etc/modules-helpers/scull_unload
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/etc/modules-helpers/module_load
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/etc/modules-helpers/module_unload
endef

$(eval $(kernel-module))
$(eval $(generic-package))