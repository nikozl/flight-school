#! /bin/bash

echo "ls general"

ls -l

echo "ls de la carpeta"

ls -lrta generate_file_output

echo "ip de container"

cat generate_file_output/fileip.txt

sshpass -p "1N1S4K1Z" scp generate_file_output/fileip.txt niko@16.3.252.243/home/niko/fileip.txt
