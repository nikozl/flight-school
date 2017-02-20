#! /bin/bash

touch generate_file_output/file.txt

awk 'END{print $1}' /etc/hosts >> generate_file_output/fileip.txt
