#!/system/bin/sh

# Shell script to deploy the whole stack
# 
# Author: Seff Parker
# Version: 20201227

if [ $(id -u) -ne 0 ]
    then
    echo "ERROR: Should be run as root user. Exiting..."
    exit 1
fi

TX_USER=$(stat -c %U /data/data/com.termux)

echo "Installing latest busybox applets..."
mkdir /data/bin /data/xbin /data/root
ln -s /data/adb/magisk/busybox /data/bin/busybox
/data/bin/busybox --install -s /data/bin/

echo "Copying assets..."
cp -rf data/* /data/
cp -rf sdcard/* /sdcard/

echo "Configure Magisk module..."
mkdir -p /data/adb/modules/batmobile-mods/system/etc/bash
ln -s /sdcard/lab/android/etc/bashrc.root /data/adb/modules/batmobile-mods/system/etc/bash/bashrc

echo "Installing user scripts and envs..."
rm -f /data/data/com.termux/files/home/.bashrc
ln -s /sdcard/lab/android/etc/bashrc.termux /data/data/com.termux/files/home/.bashrc
ln -s /sdcard/lab/android/etc/bashrc.root /data/root/.bashrc
cp -f /sdcard/lab/android/bin/* /data/bin/
cp -f /sdcard/lab/android/xbin/* /data/xbin/

chown -R $TX_USER.$TX_USER /data/data/com.termux/files/home
chmod 755 /data/xbin/* /data/bin/*
chgrp shell /data/xbin/* /data/bin/*
chcon -R --reference /system/bin /data/bin /data/bin/bash /data/xbin

# Magisk boot script
echo "Installing Magisk boot scripts..."
cp -rf ./data/adb/* /data/adb/
chmod +x /data/adb/service.d/* /data/adb/post-fs-data.d/*

echo "Reboot to apply the changes"