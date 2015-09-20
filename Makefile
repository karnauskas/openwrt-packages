include $(TOPDIR)/rules.mk

PKG_NAME:=mdns-repeater
PKG_VERSION:=1.9
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_PROTO:=hg
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://bitbucket.org/geekman/mdns-repeater
PKG_SOURCE_VERSION:=28ecc2a

PKG_LICENSE:=GPL

include $(INCLUDE_DIR)/package.mk

define Package/mdns-repeater
  SECTION:=net
  CATEGORY:=Network
  TITLE:=mdns-repeater is a Multicast DNS repeater for Linux
  URL:=https://bitbucket.org/geekman/mdns-repeater
endef

define Package/mdns-repeater/install
	$(INSTALL_DIR) -v $(1)/usr/sbin
	$(INSTALL_BIN) -v $(PKG_BUILD_DIR)/mdns-repeater $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,mdns-repeater))
