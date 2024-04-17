---
tags: Ubuntu, Updates, Administration, Autoupdate
---

- [[#Disable autoupdate|Disable autoupdate]]
- [[#See latest updates|See latest updates]]
- [[#Update system|Update system]]
- [[#Upgrade system|Upgrade system]]
- [[#Check for held back packages|Check for held back packages]]

### Disable autoupdate
<!-- These commands disable automatic updates -->
```
sudo dpkg-reconfigure -plow unattended-upgrades
cd /etc/apt/apt.conf.d
sudo nano 20auto-upgrades
sudo unattended-upgrade --dry-run -d
```

### See latest updates
<!-- These commands allow you to see the latest updates -->
```
ls -l /var/lib/apt/periodic/
sudo less /var/log/unattended-upgrades/unattended-upgrades.log
```

### Update system
<!-- This command updates the list of available packages and their versions, but it does not install or upgrade any packages -->
```
sudo apt update
```

### Upgrade system
<!-- This command actually installs newer versions of the packages you have -->
```
sudo apt upgrade
```

### Check for held back packages
<!-- This command checks for packages that were held back and not upgraded -->
```
sudo apt list --upgradable
```