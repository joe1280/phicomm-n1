#!/bin/bash

# 下载汉化包
wget -c https://github.com/ledccn/beikeyun/archive/master.zip -O beikeyun.zip
# 解压并安装
unzip -o ./beikeyun.zip -d /usr
cp -rf /usr/beikeyun-master/* /usr/local/apps/dashboard
# 重启管理面板
/etc/init.d/S99dashboard restart

# 如果你的小钢炮是N1，再多执行2条命令：
cp /usr/local/apps/dashboard/n1/aria2.html /usr/local/apps/dashboard/theme/darkmatter/templates/appcfg/aria2.html

cp /usr/local/apps/dashboard/n1/other-docker.html /usr/local/apps/dashboard/theme/darkmatter/templates/appcfg/other-docker.html

/etc/init.d/S99dashboard restart