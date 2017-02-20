#! /bin/bash
echo "donde estoy: "
echo " "
pwd
echo " "
echo "ls general: "
echo " "
ls -l
echo " "
echo "ls de la carpeta: "
echo " "
ls -lrta generate_file_output
echo " "
echo "ip de container: "
echo " "
cat generate_file_output/fileip.txt

apt-get update -y
apt-get install openssh-client -y
apt-get install rsync -y

echo " "
echo "ejecutando rsync..."

rsync -a generate_file_output / root@10.254.0.1:/root/dir2
