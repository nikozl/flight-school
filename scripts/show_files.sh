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
#apt-get insstall openssh-server -y
apt-get install sshpass -y
apt-get install rsync -y
apt-get install git -y
donde_estoy=$(pwd)
cat ${donde_estoy}
echo " "
echo "ejecutando rsync..."
#sshpass -p "123456" scp generate_file_output/fileip.txt root@10.254.0.1:/root/dir2
sshpass -p "123456" rsync -a -e "ssh -o StrictHostKeyChecking=no" ${donde_estoy}/ root@10.254.0.1:/root/dir2

echo " "
#echo "subir carpeta a git"
#cd ${donde_estoy}
#git clone https://github.com/nikozl/tests
#mv generate_file_output tests
#git add --all
#git commit -m "concourse changes"
#git push origin master

echo "copiando archivos a nueva carpeta"

cp -a generate_file_output/* generate_file_output_niko
