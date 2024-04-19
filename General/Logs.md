---
tags: CommonTasks, Linux, Logs, Administration, Unity, ErrorLogs
---

- [[#list 10 largest folders|list 10 largest folders]]
- [[#log errors:|log errors:]]
- [[#unity logs|unity logs]]

### General log management:

*List all files in the /var/log directory in human-readable format, sorted by size*
```
ls -laSh /var/log
```


*Clear the syslog file*
```
sudo truncate -s 0 /var/log/syslog
```

*This command allows you to monitor logs in real time*
```
tail -f /var/log/syslog
```


*This command allows you to search logs for specific text*
```
grep 'error' /var/log/syslog
```


*This command allows you to display logs for a specific service*
```
journalctl -u service-name
```

### Display logs for a specific process
*This command allows you to display logs for a specific process*
```
journalctl _PID=1234
```

### Clear all logs
*This command allows you to clear all logs*
```
sudo journalctl --vacuum-time=1s
```

### Display logs from a specific boot
*This command allows you to display logs from a specific boot*
```
journalctl -b -1
```

### Display logs from a specific user
*This command allows you to display logs from a specific user*
```
journalctl _UID=1000
```

### Display logs from a specific time period
*This command allows you to display logs from a specific time period*
```
journalctl --since "2022-01-01" --until "2022-01-31"
```

# CommonTasks 



*This command shows the logs from the last hour*
```  
journalctl --since "1 hour ago" ^5a65db
```

*This command shows the logs from a specific time range*
```
journalctl --since "2015-06-26 23:15:00" --until "2015-06-26 23:20:00"
```

*This command lists the files in a specific directory, excluding the last two and the first five*
```
ls -lsatr /home/player/.config/unity3d/CinemaTaztic/CinemaGame | head -n -2 | tail -n -5
```




### log errors:
*This command shows the error logs from the current boot*
```
journalctl -p err -b
```

### unity logs
*This command lists the files in a specific directory*
```
ls -lsatr /home/player/.config/unity3d/CinemaTaztic/CinemaGame
```

examples:
*Example directories*
```
/home/player/Assets/logs/
```

```
/home/player/Assets/cinemataztic-games/63565761afc66b001423a6f0
```