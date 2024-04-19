`---
tags: Linux, Administration, SSH, Logrotate, Packages, Timers, Ports, TCP, UDP
---`

### Change password:
```
passwd
```
## Manage users

*Add a new user to the system, while creating their home directory and copying initial files.*
```
adduser user_name
```
*Modify a user's details, such as their username, home directory, or user group.*
```
usermod user_name
```
*Remove a user from the system, optionally deleting their home directory and mail spool.*
```
userdel user_name
```

### Exit hanging SSH
*Doing this allows you to exit a hanging SSH session*
```
Press Enter
Press ~
Press .
```
## Find stuff


### Find
*find files named 'example.txt' in the entire filesystem and in the current directory modified within the last day, respectively*
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

### Find package
*List all installed packages that contain the word "cinemataztic"*
```
apt list --installed | grep cinemataztic
```
see [[Manage upgrades]]

### Default xorg location
*This is the default location of the Xorg configuration file*
```
/etc/X11/xorg.conf
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

### list 10 largest folders
*List the 10 largest folders in the root directory*
```
sudo du -h --max-depth=1 / 2> /dev/null | sort -hr | tail -n +2 | head
```

*Find all files larger than 100MB in the current directory*
```
find . -type f -size +100M
```



### Alternative locate
*This command locates the Xorg.conf file*
```
locate -r Xorg.conf$
```







## Processes
*These commands list processes owned by the user 'player' and all processes, respectively*
```
ps -U player
```
```
ps -aux
```

*Get Process ID of a certain process, in this example the DCH-P*
```
pidof dch-p
```
*The following command uses `strace` to trace system calls and signals. Replace `PID` with the process ID you want to trace.*
```
sudo strace -p PID
```

### End process with message
*This command sends a signal to a process, which can be used to terminate it*
```
kill -s message pid
```

### See where process is logging to
*This command shows which files a process is writing to*
```
lsof -p PID | grep log
```

## Other

### Clear a file:
```
sudo truncate -s 0 /var/log/syslog
```


see [[Logs]]



### Check installed recently
*Show  packages that were recently installed*
```
grep " install " /var/log/dpkg.log
```

### List timers
*lists all active timers*
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
*Show all TCP and UDP connections*
```
netstat -tupln
```

### Fix for some install info error
*This command renames a problematic post-installation script, which can help if the package manager is having trouble with it*
```
sudo mv /var/lib/dpkg/info/install-info.postinst /var/lib/dpkg/info/install-info.postinst.bad
```



### List latest changed
*List files in the current directory sorted by modification time, with the most recently modified files last*
```
ls -ltr
```



### See latest install
*Show the latest installed packages*
```
grep " install " /var/log/dpkg.log
```
see [[Manage upgrades]]

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