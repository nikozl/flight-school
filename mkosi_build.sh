#! /bin/bash
set -e
set -x

ls -lrtha
donde=$(pwd)
#cd /usr/bin/
#find / -name mkosi
mkosi -C ${donde}/tests/mkosi_build/repo
