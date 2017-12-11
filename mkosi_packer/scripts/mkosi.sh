#!/bin/bash
set -e
set -x

sed -i "s/DEBIAN_FRONTEND/http_proxy': 'http:\/\/16.0.96.20:3128', 'DEBIAN_FRONTEND/g" mkosi
mkdir -p /tmp/output
cd /tmp/mkosi
./mkosi -C /tmp/files --output-dir=/tmp/output/
