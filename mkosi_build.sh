#! /bin/bash
set -e
set -x

ls -lrtha
donde=$(pwd)
#cd /usr/bin/
find / -name mkosi
#cd /root/mkosi
#mkosi --version
#export
dnf install -y e2fsprogs systemd-container
mknod /dev/loop1 b 7 1
chown root:disk /dev/loop*
chmod 660 /dev/loop*
ls -l /dev/loop*
cd /tmp/mkosi
#mkosi
./mkosi -C ${donde}/tests/mkosi_build/repo 2>/tmp/error || cat /tmp/error
