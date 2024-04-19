`---
tags: CommonTasks
---`



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
    
*Get the netmask of the eno1 network interface*
```    
 ifconfig eno1 | awk '/netmask/{split($4,a,":"); print a[1]}'
```

*Find the nameserver(s) used by the system by checking the resolv.conf file*
```
grep "nameserver" /etc/resolv.conf
```

*Find the default route set on the system*
```
ip route | grep default
```


### Examine TCP port status

*Monitor TCP connections on the enp3s0 interface for port 3120*
```
tcptrack -i enp3s0 port 3120
```


*List all established connections on port 3120*
```
netstat -ano|grep 3120|grep ESTABLISHED
```



### Specific examples:

DE:
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
Sweden:

``` 
network:
  version: 2
  renderer: NetworkManager
  ethernets:
    enp2s0:
      addresses:
        - 10.66.141.52/27
      dhcp4: false
      dhcp4-overrides:
        route-metric: 200
      dhcp6: true
      dhcp6-overrides: {}
      gateway4: 10.65.141.33
      nameservers:
        addresses:
          - 8.8.8.8
    enp0s31f6:
      dhcp4: true
      dhcp6: true        
``` 
        
### Other examples

```		
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
