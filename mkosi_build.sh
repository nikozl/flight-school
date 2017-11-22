#! /bin/bash
set -e
set -x

ls -lrtha
donde=$(pwd)
dnf install -y e2fsprogs systemd-container
mknod /dev/loop1 b 7 1
chown root:disk /dev/loop*
chmod 660 /dev/loop*
ls -l /dev/loop*
chmod +x ${donde}/tests/mkosi_build/repo/mkosi.postinst
#mkosi
mkosi -C ${donde}/tests/mkosi_build/repo 2>/tmp/error || cat /tmp/error
