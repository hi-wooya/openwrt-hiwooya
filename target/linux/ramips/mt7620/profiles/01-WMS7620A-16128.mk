#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/WMS7620A-16128
	NAME:=WMS7620A-16128
	PACKAGES:=\
		kmod-usb-core kmod-usb2 kmod-usb-ohci \
		kmod-ledtrig-usbdev
endef

define Profile/WMS7620A-16128/Description
	Default package set compatible with most boards.
endef
$(eval $(call Profile,WMS7620A-16128))
