#! /bin/bash
set -e
set -x

ls -lrtha
donde=$(pwd)
cd /usr/bin/

./mkosi -C ${donde}/tests/mkosi_build/repo
