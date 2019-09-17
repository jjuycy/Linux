Firewalld与iptables对比
  firewalld 是 iptables 的前端控制器
  iptables 静态防火墙 任一策略变更需要reload所有策略，丢失现有链接
  firewalld 动态防火墙 任一策略变更不需要reload所有策略 将变更部分保存到iptables,不丢失现有链接
  firewalld 提供一个daemon和service 底层使用iptables
  基于内核的Netfilter

操作命令与解析:
  运行时配置和永久配置
  firewall-cmd --zone=public –add-service=smtp //运行时配置，重启后失效
  firewall-cmd --permanent –zone=public –add-service=smtp //永久配置，不影响当前连接，重启后生效  --permanent永久生效，没有此参数重启后失效
  firewall-cmd --runtime-to-permanent //将运行时配置保存为永久配置

  firewall-cmd --get-services //列出所有预设服务
  firewall-cmd --list-services //列出当前服务
  
  firewall-cmd --zone=public --list-ports
  firewall-cmd --zone=public --query-port=80/tcp //查看80端口
  firewall-cmd --permanent --zone=public --add-port=80/tcp //开放tcp端口
  firewall-cmd --permanent --zone=public --add-port=161/udp //开放udp端口
  firewall-cmd --permanent --zone=public --remove-port=80/tcp //禁用端口
  firewall-cmd --permanent --zone=public --add-port=8080-9999/tcp //开放端口区间
  firewall-cmd --zone="public" --add-forward-port=port=8080:proto=tcp:toport=12345 //同服务器端口转发 80端口转发到12345端口
  firewall-cmd --zone=public --add-masquerade //不同服务器端口转发，要先开启 masquerade
  firewall-cmd --zone="public" --add-forward-port=port=80:proto=tcp:toport=8080:toaddr=192.168.1.137 //不同服务器端口转发，转发到192.168.1.137的8080端口
  
  firewall-cmd --reload //加载配置
