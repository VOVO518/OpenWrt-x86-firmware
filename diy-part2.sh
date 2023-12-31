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

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# echo '修改主机名'
# sed -i "s/hostname='OpenWrt'/hostname='Phicomm-K3'/g" package/base-files/files/bin/config_generate
# cat package/base-files/files/bin/config_generate |grep hostname=
# echo '=========Alert hostname OK!========='

# 取消原主题luci-theme-bootstrap 为默认主题 - 修改 argon 为默认主题 - 删除原默认主题
# rm -rf package/lean/luci-theme-argon  
find ./ -name luci-theme-argon | xargs rm -rf;
git clone https://github.com/jerrykuku/luci-theme-argon.git package
# git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config
# echo '=========Add argon-mod OK!========='

echo '修改upnp绑定文件位置'
sed -i 's/\/var\/upnp.leases/\/tmp\/upnp.leases/g' feeds/packages/net/miniupnpd/files/upnpd.config
cat feeds/packages/net/miniupnpd/files/upnpd.config |grep upnp_lease_file
echo '=========Alert upnp binding file directory!========='
