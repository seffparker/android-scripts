#!/system/bin/sh

# Shell script to deploy the whole stack
# 
# Author: Seff Parker
# Version: 20200821

if [ $(id -u) -ne 0 ]
    then
    echo "ERROR: Should be run as root user. Existing..."
    exit 1
fi

TX_USER=$(stat -c %U /data/data/com.termux)

echo "Re-mounting as RW..."
mount -o remount,rw /
mount -o remount,rw /system

echo "Installing latest busybox applets..."

ln -s /data/adb/magisk/busybox /system/bin/busybox
/system/bin/busybox --install -s /system/bin/

echo "Installing user scripts and envs..."
cp -rf ./sdcard/lab /sdcard/
rm -f /data/data/com.termux/files/home/.bashrc
ln -s /sdcard/lab/android/etc/bashrc.termux /data/data/com.termux/files/home/.bashrc
chown -h $TX_USER.$TX_USER /data/data/com.termux/files/home/.bashrc
cp -f /sdcard/lab/android/bin/* /system/xbin/
chmod 755 /system/xbin/*
chgrp shell /system/xbin/*
mkdir /data/root
ln -s /sdcard/lab/android/etc/bashrc.root /data/root/.bashrc
ln -s /sdcard/lab/android/etc/bashrc.root /system/etc/profile


# Magisk post-boot script
echo "Installing Magisk boot scripts..."
cp -rf ./data/adb/service.d/* /data/adb/service.d/
chmod +x /data/adb/service.d/*

echo "Re-mounting as RO..."
mount -o remount,ro /
mount -o remount,ro /system
mount -o remount,ro /vendor