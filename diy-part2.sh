#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#




rm -rf package/feeds/small/v2ray-geodata

#替换新版本的upnp
rm -rf feeds/luci/applications/luci-app-upnp
git clone -b openwrt-23.05 https://github.com/openwrt/luci.git luci1
cp -r luci1/applications/luci-app-upnp feeds/luci/applications/
rm -rf luci1
./scripts/feeds install -a -f



