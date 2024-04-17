---
tags: CommonTasks
---

- [[#edit default netplan|edit default netplan]]
- [[#rm all netplans|rm all netplans]]
- [[#Set read only permissions|Set read only permissions]]
- [[#Examples:|Examples:]]
- [[#Find network info|Find network info]]
- [[#Examine TCP port status|Examine TCP port status]]
- [[#Specific examples:|Specific examples:]]
- [[#Other examples|Other examples]]

### edit default netplan
```
sudo nano /etc/netplan/02-cinemataztic-network-manager.yaml
```
### rm all netplans
```
sudo rm /etc/netplan/*
```
### Set read only permissions
```
sudo chmod 0444 02-cinemataztic-network-manager.yaml
```
### Examples:
```
CinemaTaztic Netplan Config goes here

network:
  version: 2
  ethernets:
    eno1:
      dhcp4: yes
      dhcp4-overrides:
        route-metric: 100
    enp5s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - 192.168.14.141/16
```


```
CinemaTaztic Netplan Config goes here

network:
  version: 2
  ethernets:
    eno1:
      dhcp4: yes
      dhcp4-overrides:
        route-metric: 100
    enp3s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - 10.100.102.9/16
```


### Find network info
    
```    
 ifconfig eno1 | awk '/netmask/{split($4,a,":"); print a[1]}'
```

```
cinemataztic@deploytest:~$ grep "nameserver" /etc/resolv.conf
nameserver 127.0.0.53
cinemataztic@deploytest:~$ ip route | grep default
default via 192.168.1.1 dev eno1 proto dhcp src 192.168.1.40 metric 100 

1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 00:0a:cd:3f:41:bf brd ff:ff:ff:ff:ff:ff
    inet 10.64.24.185/22 brd 10.64.27.255 scope global enp3s0
       valid_lft forever preferred_lft forever
    inet6 fe80::20a:cdff:fe3f:41bf/64 scope link 
       valid_lft forever preferred_lft forever
3: eno1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 04:42:1a:20:2c:62 brd ff:ff:ff:ff:ff:ff
    altname enp0s31f6
    inet 10.67.27.6/30 brd 10.67.27.7 scope global dynamic eno1
       valid_lft 65436sec preferred_lft 65436sec
    inet6 fe80::642:1aff:fe20:2c62/64 scope link 
       valid_lft forever preferred_lft forever
```


### Examine TCP port status

```
tcptrack -i enp3s0 port 3120
```

```
netstat -ano|grep 3120|grep ESTABLISHED
```

```
ls -laSh /var/log
```

```
sudo truncate -s 0 /var/log/syslog
```

### Specific examples:
```
CinemaTaztic Netplan Config goes here
network:
  version: 2
  ethernets:
    eno1:
      dhcp4: yes
      dhcp4-overrides:
        route-metric: 100
    enp3s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - 10.110.101.9/16
 ```       


DK:
```
# This file describes the network interfaces available on your system  
# For more information, see netplan(5).  
network:  
  version: 2  
  renderer: networkd  
  ethernets:  
    eno1:  
      addresses: [ 172.22.22.12/16 ]  
      gateway4: 172.22.0.1  
      nameservers:  
          search: [ unassigned-domain ]  
          addresses:  
              - "208.67.220.220"  
              - "208.67.222.222"
```

Heide:

```
CinemaTaztic Netplan Config goes here

network:
  version: 2
  ethernets:
    eno1:
      dhcp4: yes
      dhcp6: yes
      addresses:
        - 192.168.188.242/16
    enp3s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - 10.0.220.22/24
```



Cinedom

```
network:
  version: 2
  renderer: networkd
  ethernets:
    eno1:
      dhcp4: yes
      dhcp4-overrides:
        route-metric: 500
    enp5s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - 192.168.14.141/16
```       
        
        
### Other examples

```		
CinemaTaztic Netplan Config goes here
network:
  version: 2
  ethernets:
    eno1:
      dhcp4: yes
      dhcp4-overrides:
        route-metric: 100
    enp3s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - # CinemaTaztic Netplan Config goes here
network:
  version: 2
  ethernets:
    eno1:
      dhcp4: yes
      dhcp4-overrides:
        route-metric: 100
    enp3s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - # CinemaTaztic Netplan Config goes here
network:
  version: 2
  ethernets:
    eno1:
      dhcp4: yes
      dhcp4-overrides:
        route-metric: 100
    enp3s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - # CinemaTaztic Netplan Config goes here
network:
  version: 2
  ethernets:
    eno1:
      dhcp4: yes
      dhcp4-overrides:
        route-metric: 100
    enp3s0:
      dhcp4: no
      dhcp6: no
      addresses:
        - 10.110.101.9/16
```