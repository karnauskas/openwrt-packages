include $(TOPDIR)/rules.mk

PKG_NAME:=dpinger
PKG_RELEASE:=1
PKG_VERSION=3.0

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/dennypage/dpinger.git
PKG_SOURCE_VERSION:=v3.0

PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/dpinger
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Pinger engine for monitoring latency and loss
endef

define Build/Compile
	$(TARGET_CC) -Wall -o $(PKG_BUILD_DIR)/dpinger $(PKG_BUILD_DIR)/dpinger.c
endef

define Package/dpinger/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/dpinger $(1)/usr/bin/
endef

$(eval $(call BuildPackage,dpinger))
