基于CentOS release 6.X (Final) 做的iptables端口转发

iptables -t nat -I PREROUTING -p tcp -s $your_ip --dport $port -j DNAT --to $scr_ip:port
iptables -A FORWARD -s $your_ip -j ACCEPT
iptables -t nat -I POSTROUTING -p tcp -o eth0 -j MASQUERADE
