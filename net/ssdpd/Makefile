include $(TOPDIR)/rules.mk

PKG_NAME:=ssdpd
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/troglobit/ssdp-responder.git
PKG_SOURCE_VERSION:=1.5
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/ssdpd
	SECTION:=net
	CATEGORY:=Network
	DEPENDS:=
	TITLE:=SSDP responder for Linux
endef

define Package/mdns-repeater/conffiles
README.md
endef

define Build/Compile
	$(CC_MAKE)
endef

define Package/ssdpd/install
endef

$(eval $(call BuildPackage,ssdpd))
