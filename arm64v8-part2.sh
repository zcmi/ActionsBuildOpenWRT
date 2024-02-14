#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic

sed -i 's/TARGET_CFLAGS += -DHAVE_MAP_SYNC/TARGET_CFLAGS += -DHAVE_MAP_SYNC -D_LARGEFILE64_SOURCE/' feeds/packages/utils/xfsprogs/Makefile

# ==========openclash===========
cd package
git clone --depth=1 --filter=blob:none --sparse https://github.com/vernesong/OpenClash.git
cd OpenClash
git sparse-checkout set luci-app-openclash
cd ../..

