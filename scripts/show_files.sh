#! /bin/bash

echo "ls general"

ls -l

echo "ls de la carpeta"

ls -lrta generate_file_output

echo "ip de container"

cat generate_file_output/fileip.txt
