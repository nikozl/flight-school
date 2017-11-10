#! /bin/bash

ls -lrtha
donde=$pwd
cd /usr/bin/

./mkosi -C ${donde}/tests/mkosi_build/repo
