记录一次docker容器的迁移
docker ps  查看 COMMAND 全部
docker ps --no-trunc

先把 要迁移的容器生成一个Docker镜像的容器快照
docker commit -p CONTAINER ID "CONTAINER ID-backup"
docker images 命令来查看Docker镜像

将docker镜像导出到本地
docker save -o /data/CONTAINE-backup.tar "CONTAINER ID-backup"

将导出的镜像导入新的docker机器
 docker load -i /data/container-backup.tar
 
 docker run -itd --name container-test container-backup  /bin/bash
 
 
