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
#mkosi -C ${donde}/tests/mkosi_build/repo
