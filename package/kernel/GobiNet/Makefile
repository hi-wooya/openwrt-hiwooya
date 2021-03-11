#
# Copyright (C) 2008 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=GobiNet
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define KernelPackage/GobiNet
  CATEGORY:=Kernel modules
  SUBMENU:=Quectel Driver
  TITLE:=EC20 GobiNet Driver
  DEPENDS:= +kmod-usb-core +kmod-usb-net +kmod-usb-serial +kmod-usb-serial-option +kmod-usb-serial-wwan
  AUTOLOAD:=$(call AutoLoad,81,GobiNet)
  FILES:=$(PKG_BUILD_DIR)/GobiNet.ko
  KCONFIG:=
endef

define KernelPackage/GobiNet/description
 Kernel module for GobiNet.
endef

#EXTRA_CFLAGS:= \
#	$(patsubst CONFIG_%, -DCONFIG_%=1, $(patsubst %=m,%,$(filter %=m,$(EXTRA_KCONFIG)))) \
#	$(patsubst CONFIG_%, -DCONFIG_%=1, $(patsubst %=y,%,$(filter %=y,$(EXTRA_KCONFIG)))) \

EXTRA_CFLAGS := -DSIMCOM_NETWORK_MANAGER

MAKE_OPTS:= \
	ARCH="$(LINUX_KARCH)" \
	CROSS_COMPILE="$(TARGET_CROSS)" \
	SUBDIRS="$(PKG_BUILD_DIR)" \
	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
	$(EXTRA_KCONFIG)

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	$(MAKE) -C "$(LINUX_DIR)" \
		$(MAKE_OPTS) \
		modules
endef

$(eval $(call KernelPackage,GobiNet))
