include $(TOPDIR)/rules.mk

PKG_NAME:=quectel
PKG_VERSION:=prince-1.0
PKG_BUILD_DIR:= $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=base
	CATEGORY:=Utilities
	TITLE:=quectel pppd firmware
	SUBMENU:=prince
	DEPENDS:= +libpthread +kmod-usb-net +kmod-usb-serial +kmod-usb-serial-option +kmod-usb-serial-wwan +wwan +kmod-GobiNet
endef

define Package/$(PKG_NAME)/description
	quectel firmware 
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/quectel-CM $(1)/usr/bin/fournet
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
