#!/usr/bin/bash

export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib
export HOME=/data/data/com.termux/files/home
export PATH=/usr/local/bin:/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/sbin:/data/data/com.termux/files/usr/bin/applets:/bin:/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin:/data/data/com.termux/files/usr/bin/python
export PYTHONPATH=/data/openpilot

echo =================================================================
echo git pull
cd /data/openpilot && /data/data/com.termux/files/usr/bin/git fetch --all; /data/data/com.termux/files/usr/bin/git reset --hard HEAD; /data/data/com.termux/files/usr/bin/git pull;

echo =================================================================
echo realdata clear
cd /sdcard && rm -r realdata;

echo =================================================================
echo driver monitoring times up
cd /data/openpilot/installer/fonts && cp driver_monitor.py /data/openpilot/selfdrive/monitoring;

echo =================================================================
echo GithubSshkeys change public key
cp -f /data/openpilot/installer/fonts/GithubSshKeys /data/params/d/GithubSshKeys;
chmod 600 /data/params/d/GithubSshKeys

echo =================================================================
echo Reboot Now..!!
echo =================================================================
reboot
