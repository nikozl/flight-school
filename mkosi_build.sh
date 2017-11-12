#! /bin/bash
set -e
set -x

ls -lrtha
donde=$(pwd)
#cd /usr/bin/
#find / -name mkosi
yum update -y
mkosi -C ${donde}/tests/mkosi_build/repo
