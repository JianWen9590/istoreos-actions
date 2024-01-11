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

# 修改openwrt登陆地址,把下面的 192.168.10.1 修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把 iStore OS 修改你喜欢的就行（不能纯数字或者使用中文）
# sed -i 's/OpenWrt/iStore OS/g' package/base-files/files/bin/config_generate

# ttyd 自动登录
# sed -i "s?/bin/login?/usr/libexec/login.sh?g" ${GITHUB_WORKSPACE}/openwrt/package/feeds/packages/ttyd/files/ttyd.config

# 移除 ddns 和 ddnsto
# sed -i 's/CONFIG_PACKAGE_ddns-scripts=y/CONFIG_PACKAGE_ddns-scripts=n/' .config
# sed -i 's/CONFIG_PACKAGE_ddns-scripts-cloudflare=y/CONFIG_PACKAGE_ddns-scripts-cloudflare=n/' .config
# sed -i 's/CONFIG_PACKAGE_ddns-scripts-dnspod=y/CONFIG_PACKAGE_ddns-scripts-dnspod=n/' .config
# sed -i 's/CONFIG_PACKAGE_ddns-scripts-services=y/CONFIG_PACKAGE_ddns-scripts-services=n/' .config
# sed -i 's/CONFIG_PACKAGE_ddns-scripts_aliyun=y/CONFIG_PACKAGE_ddns-scripts_aliyun=n/' .config
# sed -i 's/CONFIG_PACKAGE_luci-app-ddns=y/CONFIG_PACKAGE_luci-app-ddns=n/' .config
# sed -i 's/CONFIG_PACKAGE_luci-i18n-ddns-zh-cn=y/CONFIG_PACKAGE_luci-i18n-ddns-zh-cn=n/' .config

sed -i 's/CONFIG_PACKAGE_ddnsto=y/CONFIG_PACKAGE_ddnsto=n/' .config
sed -i 's/CONFIG_PACKAGE_luci-app-ddnsto=y/CONFIG_PACKAGE_luci-app-ddnsto=n/' .config
sed -i 's/CONFIG_PACKAGE_luci-i18n-ddnsto-zh-cn=y/CONFIG_PACKAGE_luci-i18n-ddnsto-zh-cn=n/' .config

# 移除网卡驱动
# sed -i 's/CONFIG_PACKAGE_kmod-ath=y/CONFIG_PACKAGE_kmod-ath=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-ath10k=y/CONFIG_PACKAGE_kmod-ath10k=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-board-qca9888=y/CONFIG_PACKAGE_ath10k-board-qca9888=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-board-qca988x=y/CONFIG_PACKAGE_ath10k-board-qca988x=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-board-qca9984=y/CONFIG_PACKAGE_ath10k-board-qca9984=n/' .config   
# sed -i 's/CONFIG_PACKAGE_ath10k-firmware-qca9888=y/CONFIG_PACKAGE_ath10k-firmware-qca9888=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-firmware-qca988x=y/CONFIG_PACKAGE_ath10k-firmware-qca988x=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-firmware-qca9984=y/CONFIG_PACKAGE_ath10k-firmware-qca9984=n/' .config

# sed -i 's/CONFIG_PACKAGE_iw=y/CONFIG_PACKAGE_iw=n/' .config
# sed -i 's/CONFIG_PACKAGE_iwinfo=y/CONFIG_PACKAGE_iwinfo=n/' .config  
# sed -i 's/CONFIG_PACKAGE_kmod-iwlwifi=y/CONFIG_PACKAGE_kmod-iwlwifi=n/' .config
# sed -i 's/CONFIG_PACKAGE_iwlwifi-firmware-ax200=y/CONFIG_PACKAGE_iwlwifi-firmware-ax200=n/' .config
# sed -i 's/CONFIG_PACKAGE_iwlwifi-firmware-ax201=y/CONFIG_PACKAGE_iwlwifi-firmware-ax201=n/' .config
# sed -i 's/CONFIG_PACKAGE_iwlwifi-firmware-ax210=y/CONFIG_PACKAGE_iwlwifi-firmware-ax210=n/' .config

# sed -i 's/CONFIG_PACKAGE_kmod-rtl8192c-common=y/CONFIG_PACKAGE_kmod-rtl8192c-common=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8192cu=y/CONFIG_PACKAGE_kmod-rtl8192cu=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8192de=y/CONFIG_PACKAGE_kmod-rtl8192de=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8192se=y/CONFIG_PACKAGE_kmod-rtl8192se=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8812au-ct=y/CONFIG_PACKAGE_kmod-rtl8812au-ct=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8821ae=y/CONFIG_PACKAGE_kmod-rtl8821ae=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8xxxu=y/CONFIG_PACKAGE_kmod-rtl8xxxu=n/' .config  
# sed -i 's/CONFIG_PACKAGE_kmod-rtlwifi=y/CONFIG_PACKAGE_kmod-rtlwifi=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtlwifi-btcoexist=y/CONFIG_PACKAGE_kmod-rtlwifi-btcoexist=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtlwifi-pci=y/CONFIG_PACKAGE_kmod-rtlwifi-pci=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtlwifi-usb=y/CONFIG_PACKAGE_kmod-rtlwifi-usb=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtw88=y/CONFIG_PACKAGE_kmod-rtw88=n/' .config

# # 移除 uhttpd
# sed -i 's/CONFIG_PACKAGE_uhttpd=y/CONFIG_PACKAGE_uhttpd=n/' .config
# sed -i 's/CONFIG_PACKAGE_uhttpd-mod-ubus=y/CONFIG_PACKAGE_uhttpd-mod-ubus=n/' .config
# sed -i 's/CONFIG_PACKAGE_libiwinfo-lua=y/CONFIG_PACKAGE_libiwinfo-lua=n/' .config
# sed -i 's/CONFIG_PACKAGE_luci-ssl-openssl=y/CONFIG_PACKAGE_luci-ssl-openssl=n/' .config

# 移除 bootstrap 主题
sed -i 's/CONFIG_PACKAGE_luci-theme-bootstrap=y/CONFIG_PACKAGE_luci-theme-bootstrap=n/' .config

# 添加第三方应用
mkdir kiddin9
pushd kiddin9
git clone --depth=1 https://github.com/kiddin9/openwrt-packages .
popd

mkdir Modem-Support
pushd Modem-Support
git clone --depth=1 https://github.com/Siriling/5G-Modem-Support .
popd

mkdir MyConfig
pushd MyConfig
git clone --depth=1 https://github.com/Siriling/OpenWRT-MyConfig .
popd

mkdir package/community
pushd package/community

# 系统相关应用
#Cpufreq（conf已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-cpufreq
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-lib-mac-vendor
#Fan（conf已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fan
#Poweroff（iStoreOS已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-poweroff
#Diskman（conf已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-diskman
#Fileassistant（iStoreOS已有）
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant
#Guest-wifi
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-guest-wifi
cp -rf ../../kiddin9/luci-app-guest-wifi/* luci-app-guest-wifi
#Onliner (need luci-app-nlbwmon)
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-onliner
cp -rf ../../kiddin9/luci-app-onliner/* luci-app-onliner
#svn export https://github.com/rufengsuixing/luci-app-onliner/trunk luci-app-onliner
#Eqos（iStoreOS已有）
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-eqos
#Wolplus
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-wolplus

# 存储相关应用
# Gowebdav（iStoreOS已有）
# svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-gowebdav

# 科学上网和代理应用
#SSR
# svn export https://github.com/fw876/helloworld/trunk helloworld
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ssr-plus
# cp -rf ../../kiddin9/luci-app-ssr-plus/* luci-app-ssr-plus
#Passwall和Passwall2
# svn export https://github.com/xiaorouji/openwrt-passwall/trunk openwrt-passwall
# svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall
# svn export https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2
#VSSR（Hello Word）
# svn export https://github.com/jerrykuku/lua-maxminddb/trunk lua-maxminddb
# svn export https://github.com/jerrykuku/luci-app-vssr/trunk luci-app-vssr
#OpenClash
# svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
# svn export https://github.com/Siriling/OpenWRT-MyConfig/trunk/configs/istoreos/general/applications/luci-app-openclash temp/luci-app-openclash
# cp -rf temp/luci-app-openclash/* luci-app-openclash

cp -rf ../../kiddin9/luci-app-openclash/* luci-app-openclash
cp -rf ../../MyConfig/configs/istoreos/general/applications/luci-app-openclash/* luci-app-openclash
#加入OpenClash核心
chmod -R a+x $GITHUB_WORKSPACE/scripts/preset-clash-core.sh
if [ "$1" = "rk33xx" ]; then
    $GITHUB_WORKSPACE/scripts/preset-clash-core.sh arm64
elif [ "$1" = "rk35xx" ]; then
    $GITHUB_WORKSPACE/scripts/preset-clash-core.sh arm64
elif [ "$1" = "x86" ]; then
    $GITHUB_WORKSPACE/scripts/preset-clash-core.sh amd64
fi

# 去广告
#ADGuardHome（kiddin9）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/adguardhome
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome
cp -rf ../../kiddin9/luci-app-adguardhome/* luci-app-adguardhome
# svn export https://github.com/Siriling/OpenWRT-MyConfig/trunk/configs/istoreos/general/applications/luci-app-adguardhome temp/luci-app-adguardhome
# cp -rf temp/luci-app-adguardhome/* luci-app-adguardhome
# sed -i 's/拦截DNS服务器/拦截DNS服务器，默认用户名和密码均为root/' luci-app-adguardhome/po/zh_Hans/adguardhome.po
sed -i 's/+PACKAGE_$(PKG_NAME)_INCLUDE_binary:adguardhome//' luci-app-adguardhome/Makefile
#ADGuardHome（kenzok8）
# svn export https://github.com/kenzok8/openwrt-packages/trunk/adguardhome
# svn export https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome
# svn export https://github.com/Siriling/OpenWRT-MyConfig/trunk/configs/lede/general/applications/luci-app-adguardhome temp/luci-app-adguardhome
# cp -rf temp/luci-app-adguardhome/* luci-app-adguardhome
# sed -i 's/默认账号和密码均为：admin/默认用户名和密码均为root/' luci-app-adguardhome/po/zh-cn/AdGuardHome.po
# sed -i 's/网页管理账号和密码:admin ,端口:/端口/' luci-app-adguardhome/po/zh-cn/AdGuardHome.po
#dnsfilter
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-dnsfilter
#ikoolproxy
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-ikoolproxy

# docker应用
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-filebrowser
# rm -rf ../../customfeeds/luci/applications/luci-app-kodexplorer
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-kodexplorer
# rm -rf ../../customfeeds/packages/utils/verysync
# rm -rf ../../customfeeds/luci/applications/luci-app-verysync
# svn export https://github.com/kenzok8/small-package/trunk/verysync
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-verysync

# VPN服务器
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-ssr-mudb-server
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-ipsec-server
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-pptp-server
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-softethervpn

# DNS
# svn export https://github.com/kenzok8/small-package/trunk/mosdns
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-mosdns
# svn export https://github.com/kenzok8/small-package/trunk/smartdns
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-smartdns

#内网穿透
#Zerotier（iStoreOS已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-zerotier

# 其他
#Socat（iStoreOS已有）
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-socat
#Unblockneteasemusic
# svn export https://github.com/kiddin9/openwrt-packages/trunk/UnblockNeteaseMusic
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-unblockneteasemusic
cp -rf ../../kiddin9/UnblockNeteaseMusic/* UnblockNeteaseMusic
cp -rf ../../kiddin9/luci-app-unblockneteasemusic/* luci-app-unblockneteasemusic
#OpenAppFilter（conf已有）
# svn export https://github.com/destan19/OpenAppFilter/trunk OpenAppFilter

# 5G通信模组拨号工具
# svn export https://github.com/Siriling/5G-Modem-Support/trunk/quectel_QMI_WWAN
# svn export https://github.com/Siriling/5G-Modem-Support/trunk/quectel_cm_5G
# svn export https://github.com/xiaoxifu64/immortalwrt/trunk/package/quectel_MHI
# svn export https://github.com/Siriling/5G-Modem-Support/trunk/luci-app-hypermodem
cp -rf ../../Modem-Support/quectel_QMI_WWAN/* quectel_QMI_WWAN
cp -rf ../../Modem-Support/quectel_cm_5G/* quectel_cm_5G
cp -rf ../../Modem-Support/quectel_MHI/* quectel_MHI
cp -rf ../../Modem-Support/luci-app-hypermodem/* luci-app-hypermodem

# 5G模组短信插件
# svn export https://github.com/dwj0/luci-app-sms-tool/trunk/sms-tool
# svn export https://github.com/dwj0/luci-app-sms-tool/trunk/luci-app-sms-tool
# svn export https://github.com/Siriling/OpenWRT-MyConfig/trunk/configs/istoreos/general/applications/luci-app-sms-tool temp/luci-app-sms-tool
# cp -rf temp/luci-app-sms-tool/* luci-app-sms-tool
cp -rf ../../Modem-Support/sms-tool/* sms-tool
cp -rf ../../Modem-Support/luci-app-sms-tool/* luci-app-sms-tool
cp -rf ../../MyConfig/configs/istoreos/general/applications/luci-app-sms-tool/* luci-app-sms-tool

# 5G模组信息插件
# svn export https://github.com/qiuweichao/luci-app-modem-info/trunk/luci-app-3ginfo-lite
# svn export https://github.com/owner888/luci-app-3ginfo-zh_cn/trunk/3ginfo
# svn export https://github.com/owner888/luci-app-3ginfo-zh_cn/trunk/luci-app-3ginfo

# 5G模组信息插件+AT工具
# svn export https://github.com/Siriling/5G-Modem-Support/trunk/sendat
# svn export https://github.com/Siriling/5G-Modem-Support/trunk/luci-app-cpe
# svn export https://github.com/dwj0/luci-app-sms-tool/trunk/sms-tool
# svn export https://github.com/Siriling/5G-Modem-Support/trunk/luci-app-modem
cp -rf ../../Modem-Support/luci-app-modem/* luci-app-modem
popd

# 5G模组拨号脚本
# mkdir -p package/base-files/files/root/5GModem
# cp -rf $GITHUB_WORKSPACE/tools/5G模组拨号脚本/5GModem/* package/base-files/files/root/5GModem
# echo -e "#* * * * * bash /root/5GModem/5g_crontab.sh" >> package/istoreos-files/files/etc/crontabs/root

# 添加第三方应用
echo "
# 系统相关应用
CONFIG_PACKAGE_luci-app-poweroff=y
CONFIG_PACKAGE_luci-i18n-poweroff-zh-cn=y
CONFIG_PACKAGE_luci-app-fileassistant=y
CONFIG_PACKAGE_luci-app-guest-wifi=y
CONFIG_PACKAGE_luci-app-onliner=y
CONFIG_PACKAGE_luci-app-eqos=y
# CONFIG_PACKAGE_luci-app-wolplus=y

# 存储相关应用
# CONFIG_PACKAGE_luci-app-gowebdav=y

# 科学上网和代理应用
#SSR
# CONFIG_PACKAGE_luci-app-ssr-plus=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_NONE_V2RAY=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_V2ray=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Xray=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Kcptun=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Hysteria=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_IPT2Socks=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_NaiveProxy=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Redsocks2=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_NONE_Client=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Client=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_NONE_Server=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Server=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan=y

#Passwall和Passwall2
# CONFIG_PACKAGE_luci-app-passwall2=y
# CONFIG_PACKAGE_luci-app-passwall=y
# CONFIG_PACKAGE_luci-app-passwall_Transparent_Proxy=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Brook=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ChinaDNS_NG=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Haproxy=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Hysteria=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_IPv6_Nat=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Kcptun=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_Plus=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray_Plugin=y
# CONFIG_PACKAGE_luci-app-haproxy-tcp=y

#VSSR（HelloWord）
# CONFIG_PACKAGE_luci-app-vssr=y
# CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Xray=y
# CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Trojan=y
# CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Kcptun=y
# CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Xray_plugin=y
# CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Server=y

#Openclash
CONFIG_PACKAGE_luci-app-openclash=y

# 去广告应用
CONFIG_PACKAGE_luci-app-adguardhome=y
# CONFIG_PACKAGE_luci-app-dnsfilter=y
# CONFIG_PACKAGE_luci-app-ikoolproxy=y

# docker应用
# CONFIG_PACKAGE_luci-app-aliyundrive-webdav=y
# CONFIG_PACKAGE_luci-app-aria2=y
# CONFIG_PACKAGE_luci-app-transmission=y
# CONFIG_PACKAGE_luci-app-qbittorrent=y
# CONFIG_PACKAGE_luci-app-qbittorrent_static=y
# CONFIG_PACKAGE_luci-app-alist=y
# CONFIG_PACKAGE_luci-app-filebrowser=y
# CONFIG_PACKAGE_luci-app-familycloud=y
# CONFIG_PACKAGE_luci-app-kodexplorer=y
# CONFIG_PACKAGE_luci-app-rclone=y

# 局域网分享应用
# CONFIG_PACKAGE_luci-app-minidlna=y
# CONFIG_PACKAGE_luci-app-airplay2=y
# CONFIG_PACKAGE_luci-app-shairplay=y
# CONFIG_PACKAGE_luci-app-music-remote-center=y
# CONFIG_PACKAGE_luci-app-mjpg-streamer=y
# CONFIG_PACKAGE_luci-app-ps3netsrv=y
# CONFIG_PACKAGE_luci-app-usb-printer=y

# VPN服务器
# CONFIG_PACKAGE_luci-app-brook-server=y
# CONFIG_PACKAGE_luci-app-ssr-mudb-server=y
# CONFIG_PACKAGE_luci-app-trojan-server=y
# CONFIG_PACKAGE_luci-app-openvpn-server=y
# CONFIG_PACKAGE_luci-app-pptp-server=y
# CONFIG_PACKAGE_luci-app-softethervpn=y

# DNS
# CONFIG_PACKAGE_luci-app-mosdns=y
# CONFIG_PACKAGE_luci-app-smartdns=y

# DDNS
# CONFIG_PACKAGE_luci-app-aliddns=y
# CONFIG_PACKAGE_luci-app-tencentddns=y

# 内网穿透
# CONFIG_PACKAGE_luci-app-zerotier=y
# CONFIG_PACKAGE_luci-app-frpc=y
# CONFIG_PACKAGE_luci-app-frps=y
# CONFIG_PACKAGE_luci-app-nps=y
# CONFIG_PACKAGE_luci-app-n2n_v2=y

# 其他
# CONFIG_PACKAGE_luci-app-pushbot=y
CONFIG_PACKAGE_luci-app-socat=y
CONFIG_PACKAGE_luci-app-unblockneteasemusic=y
CONFIG_PACKAGE_luci-app-uugamebooster=y
# CONFIG_PACKAGE_luci-app-wifischedule=y
# CONFIG_PACKAGE_luci-app-xlnetacc=y
# CONFIG_PACKAGE_luci-udptools=y
" >> .config

#5G相关
echo "
# 5G模组信号插件
# CONFIG_PACKAGE_ext-rooter-basic=y

# 5G模组短信插件
CONFIG_PACKAGE_luci-app-sms-tool=y

# 5G模组信息插件
# CONFIG_PACKAGE_luci-app-3ginfo-lite=y
# CONFIG_PACKAGE_luci-app-3ginfo=y

# 5G模组信息插件+AT工具
# CONFIG_PACKAGE_luci-app-cpe=y
# CONFIG_PACKAGE_sendat=y
CONFIG_PACKAGE_luci-app-modem=y

# QMI拨号工具（移远，广和通）
# CONFIG_PACKAGE_quectel-CM-5G=y
# CONFIG_PACKAGE_fibocom-dial=y

# QMI拨号软件
# CONFIG_PACKAGE_kmod-qmi_wwan_f=y
CONFIG_PACKAGE_luci-app-hypermodem=y

# Gobinet拨号软件
# CONFIG_PACKAGE_kmod-gobinet=y
# CONFIG_PACKAGE_luci-app-gobinetmodem=y

# 串口调试工具
CONFIG_PACKAGE_minicom=y

# 脚本拨号工具依赖
CONFIG_PACKAGE_grep=y
CONFIG_PACKAGE_procps-ng=y
CONFIG_PACKAGE_procps-ng-ps=y
" >> .config
