#!/bin/bash
set -e
set -x

export all_proxy=""
export http_proxy=""
export https_proxy=""

cd tests/mkosi_packer
apk add --update qemu qemu-system-x86_64 qemu-img
packer build --force mkosi.json
