#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
# echo 'src-git opentopd  https://github.com/sirpdboy/sirpdboy-package' >>feeds.conf.default
# git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
# git clone https://github.com/sirpdboy/luci-app-poweroffdevice package/luci-app-poweroffdevice
git clone https://github.com/sirpdboy/luci-app-partexp.git package/luci-app-partexp
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
git clone https://github.com/sirpdboy/luci-app-advanced.git package/luci-app-advanced 
git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky
git clone https://github.com/sirpdboy/luci-app-wizard package/luci-app-wizard
rm -rf package/lean/autocore
git clone https://github.com/sirpdboy/myautocore package/myautocore
rm -rf package/lean/autosamba
git clone https://github.com/sirpdboy/autosamba package/autosamba

# echo '添加jerrykuku的argon-mod主题'
# rm -rf package/lean/luci-theme-argon  
# find ./ -name luci-theme-argon | xargs rm -rf;
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config
# echo '=========Add argon-mod OK!========='
