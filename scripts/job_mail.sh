#! /bin/bash

echo "Donde estoy"
echo " "
pwd
ls -l 
echo " "
echo "ls de carpeta"
echo " "
cd pipeline-code 
echo " "
ls -l
echo " "

hostname >> $(pwd)/hostname
hostname -f >> $(pwd)/hostnamef

cat $(pwd)/hostname
cat $(pwd)/hostnamef

