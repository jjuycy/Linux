#!/bin/bash
disk_check_b=`df -h|grep /dev/vdb|wc -l`

if [ $disk_check_b -eq 0 ] ;then
fdisk /dev/vdb <<EOF
n
p
1


w
q
EOF


mkfs.ext4 /dev/vdb1


#mkdir /data
mount /dev/vdb1 /data
echo "/dev/vdb1 /data ext4 defaults 0 0" >> /etc/fstab


fi
rm -f initdisk.sh
