#! /bin/bash

ls -lrtha

mkdir -p mkosi_build

./mkosi -C tests/mkosi_build/repo
