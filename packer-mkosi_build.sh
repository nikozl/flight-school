#!/bin/bash
cd tests/mkosi_packer
apk add --update qemu qemu-system-x86_64 qemu-img
packer build --force mkosi.json
