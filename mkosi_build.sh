#! /bin/bash
set -e
set -x

ls -lrtha
donde=$(pwd)
cd /usr/bin/
cat mkosi
#./mkosi -C ${donde}/tests/mkosi_build/repo
