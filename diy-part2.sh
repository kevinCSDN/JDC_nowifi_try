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




rm -rf package/emortal/automount
rm -rf package/emortal/autosamba
rm -rf package/emortal/default-settings


#保留应用
#启用extglob 扩展功能
shopt -s extglob
rm -rf feeds/luci/applications/!(luci-app-upnp|luci-app-ddns|luci-app-docker|luci-app-openclash|luci-app-firewall|luci-app-ttyd|luci-app-autoreboot|luci-app-smartdns)
rm -rf package/feeds/luci/!(luci-app-upnp|luci-app-ddns|luci-app-docker|luci-app-openclash|luci-app-firewall|luci-app-ttyd|luci-app-autoreboot|luci-app-smartdns)
./scripts/feeds install -a -f



