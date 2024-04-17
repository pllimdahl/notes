---
tags: Linux, Administration, SSH, Logrotate, Packages, Timers, Ports, TCP, UDP
---

- [[#Exit hanging SSH|Exit hanging SSH]]
- [[#Logrotate|Logrotate]]
- [[#Find package|Find package]]
- [[#Check installed recently|Check installed recently]]
- [[#List timers|List timers]]
- [[#List open ports|List open ports]]
- [[#See TCP and UDP|See TCP and UDP]]

### Exit hanging SSH
*This command allows you to exit a hanging SSH session*
```
Enter~.
```

### Logrotate
*This command locates the Xorg.conf file*
```
locate -r Xorg.conf$
```
see [[Logs]]

### Find package
*This command lists all installed packages that contain the word "cinemataztic"*
```
apt list --installed | grep cinemataztic
```
see [[Manage upgrades]]

### Check installed recently
*This command shows the packages that were recently installed*
```
grep " install " /var/log/dpkg.log
```

### List timers
*This command lists all active timers*
```
systemctl list-timers
```

*This command shows the memory usage of each process*
```
ps afu | awk 'NR==1 {o=$0; a=match($0,$11);}; NR>1 {o=$0;$5=int(10*$5/1024)/10"M";}{ printf "%-8s %6s %-5s %-5s %9s %9s %-8s %-4s %-6s %-5s %s\n", $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, substr(o, a);}'
```

### List open ports
*These commands list all open ports*
```
sudo ss -tulpn
```

```
sudo ss -ltp
```

### See TCP and UDP
*This command shows all TCP and UDP connections*
```
netstat -tupln
```

### Fix for some install info error
*This command renames a problematic post-installation script, which can help if the package manager is having trouble with it*
```
sudo mv /var/lib/dpkg/info/install-info.postinst /var/lib/dpkg/info/install-info.postinst.bad
```

### Default xorg location
*This is the default location of the Xorg configuration file*
```
/etc/X11/xorg.conf
```

### List latest changed
*This command lists files in the current directory sorted by modification time, with the most recently modified files last*
```
ls -ltr
```

### List by size
*This command lists files in the current directory sorted by size, with the smallest files first*
```
ls -lashr
```

### Find in man
*This command searches the man page for 'example' for lines containing '-X'*
```
man example | grep -- '-X'
```

### See latest install
*This command shows the latest installed packages*
```
grep " install " /var/log/dpkg.log
```
see [[Manage upgrades]]

### Find
*These commands find files named 'example.txt' in the entire filesystem and in the current directory modified within the last day, respectively*
```
find / -type f -name example.txt
```
```
find . -mtime -1
```
see [[Logs]]

### Find systemwide
*This command finds files named 'example.txt' in the entire filesystem, excluding the /sys and /proc directories*
```
sudo find / -path /sys -prune -o -path /proc -prune -o -type f -name example.txt
```

### Make screenshots
*This command takes a screenshot every 2 seconds and saves it with a timestamp in the filename*
```
while true; do scrot '%Y-%m-%d-%H:%M:%S_$wx$h.jpeg' & sleep 2; done
```

### Processes
*These commands list processes owned by the user 'player' and all processes, respectively*
```
ps -U player
```
```
ps -aux
```

*These commands Process ID of a certain process, in this example the DCH-P*
```
pidof dch-p
```

### End process with message
*This command sends a signal to a process, which can be used to terminate it*
```
kill -s message pid
```

### See where process is logging to
*This command shows which files a process is writing to*
```
lsof -p 13143 | grep log
```

### SCP send
*This command copies a file to a remote server using SCP*
```
scp file.txt remote_username@10.10.0.2:/remote/directory
```

### SCP tunnel send 
*This command copies a file to a remote server using SCP over a specific port*
```
scp -P 46537 /home/lps/Downloads/cinemataztic-config_0.14.3.deb cinemataztic@192.168.1.178:/home/cinemataztic/ 
```

### NVIDIA driver version
*This command shows the version of the NVIDIA driver*
```
grep "X Driver" /var/log/Xorg.0.log
```

### If cloud reports not connected but ssh works
*This command deletes a configuration file and restarts a service, which can help if the service is not working correctly*
```
sudo rm /home/player/conf-db.json && sudo systemctl restart cinemataztic-player/dch-p
```

### Disable auto upgrades 20:04
*These commands disable automatic upgrades*
```
sudo dpkg-reconfigure -plow unattended-upgrades
```
```
cd /etc/apt/apt.conf.d
```
```
sudo nano 20auto-upgrades
```
see [[Manage upgrades]]

### MEGABOI
*This command performs several operations, including adding a key to the package manager, removing a list of sources, updating the package list, upgrading all packages, removing unused packages, and editing a network configuration file*
```
 sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1655A0AB68576280 && sudo rm /etc/apt/sources.list.d/chrome.list && sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt autoremove -y && sudo vim /etc/netplan/02-cinemataztic-network-manager.yaml
```

### Check boots
*These commands show information about system boots*
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

### Fix python-minimal
*This command removes the package information files for 'python-minimal', which can help if the package manager is having trouble with it*
```
sudo rm /var/lib/dpkg/info/python-minimal.*
```

### Check games
*This command lists the contents of a directory containing game assets*
```
ls /home/player/Assets/cinemataztic-games/*
```