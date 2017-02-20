#! /bin/bash

echo "ls general"

ls -l

echo "ls de la carpeta"

ls -lrta generate_file_output

echo "ip de container"
echo "<br>"
cat generate_file_output/fileip.txt

