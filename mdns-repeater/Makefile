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

define Package/mdns-repeater/conffiles
/etc/config/mdns-repeater
endef

define Build/Compile
	$(TARGET_CC) -o $(PKG_BUILD_DIR)/mdns-repeater $(PKG_BUILD_DIR)/mdns-repeater.c
endef

define Package/mdns-repeater/install
	$(INSTALL_DIR) -v $(1)/usr/sbin
	$(INSTALL_BIN) -v $(PKG_BUILD_DIR)/mdns-repeater $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/mdns-repeater.init.sh $(1)/etc/init.d/mdns-repeater
	$(INSTALL_DIR) $(1)/etc/config
	$(CP) ./files/default.config $(1)/etc/config/mdns-repeater
endef

$(eval $(call BuildPackage,mdns-repeater))
