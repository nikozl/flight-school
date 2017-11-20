#! /bin/bash
set -e
set -x

ls -lrtha
donde=$(pwd)
#cd /usr/bin/
#find / -name mkosi
cd /root/mkosi
mkosi --version
export
dnf install -y e2fsprogs
mknod /dev/loop1p1 b 7 1
mkosi -C ${donde}/tests/mkosi_build/repo
