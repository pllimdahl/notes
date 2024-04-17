---
tags: CommonTasks
---

- [[#Disable autoupdate|Disable autoupdate]]
- [[#see latest updates:|see latest updates:]]




### Disable autoupdate
```
sudo dpkg-reconfigure -plow unattended-upgrades
```

```
cd /etc/apt/apt.conf.d
```

```
sudo nano 20auto-upgrades
```

```
sudo unattended-upgrade --dry-run -d
```


### see latest updates:
```
ls -l /var/lib/apt/periodic/
```

```
sudo less /var/log/unattended-upgrades/unattended-upgrades.log
```





