#!/bin/bash
set -e
set -x

export all_proxy="http://16.0.96.20:3128"
export http_proxy="http://16.0.96.20:3128"
export https_proxy="http://16.0.96.20:3128"
export no_proxy="16.0.96.20"
cd tests/mkosi_packer
apk add --update qemu qemu-system-x86_64 qemu-img

#export all_proxy=""
#export http_proxy=""
#export https_proxy=""

PACKER_LOG=1 packer build --force mkosi.json
