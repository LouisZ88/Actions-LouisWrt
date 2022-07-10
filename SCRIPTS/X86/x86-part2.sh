#!/bin/bash
#
# Copyright (c) 2021 F-T-Otaku
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Actions-OtakuWrt
# File name: x86-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Add applications
# Passwall
git clone -b packages --depth=1 https://github.com/xiaorouji/openwrt-passwall.git ./package/lean/passwall_package
git clone -b luci --depth=1 https://github.com/xiaorouji/openwrt-passwall.git ./package/lean/passwall
cp -rf ./package/lean/passwall_package/* ./package/lean/passwall
rm -rf ./package/lean/passwall_package
# Openclash
git clone -b master --depth=1 https://github.com/vernesong/OpenClash.git ./package/lean/luci-app-openclash
mkdir -p ./package/lean/openclash
cp -rf ./package/lean/luci-app-openclash/luci-app-openclash/* ./package/lean/openclash
rm -rf ./package/lean/luci-app-openclash
# Theme Argon
rm -rf ./package/feeds/luci/luci-theme-argon
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon
git clone -b master --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git ./package/lean/luci-app-argon-config
# Modify default IP
sed -i 's/192.168.1.1/10.200.88.1/g' package/base-files/files/bin/config_generate
# Modify default Hostname
sed -i 's/OpenWrt/LouisWrt/g' package/base-files/files/bin/config_generate

##############################################################################################
git clone https://github.com/thinktip/luci-theme-neobird.git package/luci-theme-neobird
##############################################################################################
#  关机
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
##############################################################################################
#passwall2
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2
#openclash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
##############################################################################################
# NAS
#文件助手
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant package/luci-app-fileassistant
##############################################################################################
# DDNSto
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddnsto package/luci-app-ddnsto
svn co https://github.com/kiddin9/openwrt-packages/trunk/ddnsto package/ddnsto
##############################################################################################
# AliyunDrive
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-aliyundrive-webdav package/luci-app-aliyundrive-webdav
# Shortcut-fe
svn co https://github.com/kiddin9/openwrt-packages/trunk/shortcut-fe/shortcut-fe package/shortcut-fe
# ACME
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-acme package/luci-app-acme
# MWANHelper
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-mwan3helper package/luci-app-mwan3helper
svn co https://github.com/kiddin9/openwrt-packages/trunk/mwan3 package/mwan3
# Duobo
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-syncdial package/luci-app-syncdial
# NPS
svn co https://github.com/kiddin9/openwrt-packages/trunk/nps package/nps
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-nps package/luci-app-nps
#webcontrol
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-control-weburl package/luci-app-control-weburl
#Openvpn server
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-openvpn-server package/luci-app-openvpn-server
