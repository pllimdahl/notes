---
tags:
  - CommonTasks
test:
---
### exit hanging ssh

```
 Enter~.
```

### logrotate:
```
locate -r Xorg.conf$
```
see [[Logs]]

### find pkg
```
apt list --installed | grep cinemataztic
```
see [[Manage upgrades]]

### Check installed recently:
```
grep " install " /var/log/dpkg.log
```

### List timers
```
systemctl list-timers
```

```
ps afu | awk 'NR==1 {o=$0; a=match($0,$11);}; NR>1 {o=$0;$5=int(10*$5/1024)/10"M";}{ printf "%-8s %6s %-5s %-5s %9s %9s %-8s %-4s %-6s %-5s %s\n", $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, substr(o, a);}'
```

### list open ports
```
sudo ss -tulpn
```

```
sudo ss -ltp
```

### see TCP and UDP
```
netstat -tupln
```

### fix  for some install info error
```
sudo mv /var/lib/dpkg/info/install-info.postinst /var/lib/dpkg/info/install-info.postinst.bad
```

### Default xorg location
```
/etc/X11/xorg.conf
```
### list latest changed
```
ls -ltr
```

### list by size
```
ls -lashr
```

### find in man
```
man example | grep -- '-X'
```

```
user player!! ~/.config/google-chrome/Crash Reports
```

```
tail -f /var/log/syslog | grep "slapd\|dhclient"
```


### see latest install:
```
grep " install " /var/log/dpkg.log
```
see [[Manage upgrades]]

### find
```
find / -type f -name example.txt
```

```
find . -mtime -1
```

see [[Logs]]

### find systemwide
```
sudo find / -path /sys -prune -o -path /proc -prune -o -type f -name example.txt
```

```
find / -type f -name example.txt
```

```
find . -mtime -1
```

### Make screenshots
```
while true; do scrot '%Y-%m-%d-%H:%M:%S_$wx$h.jpeg' & sleep 2; done
```

### PROCESSES 

```
ps -U player
```

```
ps -aux
```

### end process with message:
```
kill -s message pid
```

### see where process is logging to
```
lsof -p 13143 | grep log
```

### SCP send
```
scp file.txt remote_username@10.10.0.2:/remote/directory
```

### SCP tunnel send 
```
scp -P 46537 /home/lps/Downloads/cinemataztic-config_0.14.3.deb cinemataztic@192.168.1.178:/home/cinemataztic/ 
```

### NVIDIA driver version
```
grep "X Driver" /var/log/Xorg.0.log
```

### if cloud reports not connected but ssh works:
```
sudo rm /home/player/conf-db.json && sudo systemctl restart cinemataztic-player/dch-p
```

### disable auto upgrades 20:04:
```
sudo dpkg-reconfigure -plow unattended-upgrades
```


eller
```
cd /etc/apt/apt.conf.d
```

```
sudo nano 20auto-upgrades
```

see [[Manage upgrades]]

### MEGABOI
```
 sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1655A0AB68576280 && sudo rm /etc/apt/sources.list.d/chrome.list && sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt autoremove -y && sudo vim /etc/netplan/02-cinemataztic-network-manager.yaml
```

### Check boots
```
last reboot | less
```

```
last -x|grep shutdown | head -1
```

```
sudo journalctl --list-boots
```

```
last | grep crash
```

```
sudo less /var/log/dmesg
```


### end process with message:
```
kill -s message pid
```

### fix python-minomal
```
sudo rm /var/lib/dpkg/info/python-minimal.*
```

### check games:

```
ls /home/player/Assets/cinemataztic-games/*
```

