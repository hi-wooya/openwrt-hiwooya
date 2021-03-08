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
		kmod-ledtrig-usbdev \
                mountd \
                mjpg-streamer \
                uhttpd rpcd rpcd-mod-iwinfo \
                rpcd-mod-rpcsys cgi-io spi-tools \
                kmod-fs-vfat kmod-fs-exfat kmod-fs-ext4 block-mount e2fsprogs \
                kmod-i2c-core kmod-i2c-mt7621 \
                kmod-nls-base kmod-nls-cp437 kmod-nls-iso8859-1 kmod-nls-utf8 \
                kmod-sdhci-mt7620 kmod-usb-storage \
                kmod-video-core kmod-video-uvc \
                ralink-wifi luci
endef

define Profile/WMS7620A-16128/Description
	Default package set compatible with most boards.
endef
$(eval $(call Profile,WMS7620A-16128))
