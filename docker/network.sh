docker nework 

docker 默认提供了5种网络驱动模式：

  bridge: 默认的网络驱动模式。
  host: 移除容器和Docker宿主机之间的网络隔离，并直接使用主机的网络。
  overlay: overlay网络将多个Docker守护进程连接在一起,并使集群服务能够相互通信。
  macvlan: Macvlan网络允许为容器分配MAC地址，使其显示为网络上的物理设备。
  none: 对于此容器，禁用所有联网。


 查看网络：docker network ls
