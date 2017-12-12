#! /bin/bash
set -e
set -x

pwd
ls -l
ls -lrta generate_file_output
cat generate_file_output/fileip.txt
cat /etc/issue
uname -a
apt-get update -y
apt-get install openssh-client -y
apt-get install openssh-server -y
apt-get install sshpass -y
apt-get install rsync -y
#apt-get install git -y
#donde_estoy=$(pwd)
#cat ${donde_estoy}
#echo " "
#echo "ejecutando rsync..."
sshpass -p "123456" "scp -o  StrictHostKeyChecking=no" generate_file_output/fileip.txt root@10.254.0.1:/root/dir2
#sshpass -p "123456" rsync -a -e "ssh -o StrictHostKeyChecking=no" generate_file_output/ root@10.254.0.9:/root/dir2

#echo " "

