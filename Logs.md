---
tags: CommonTasks
---
#CommonTasks 

- [[#list 10 largest folders|list 10 largest folders]]
- [[#log errors:|log errors:]]
- [[#unity logs|unity logs]]

```  
journalctl --since "1 hour ago" ^5a65db
```

```
journalctl --since "2015-06-26 23:15:00" --until "2015-06-26 23:20:00"
```

```
ls -lsatr /home/player/.config/unity3d/CinemaTaztic/CinemaGame | head -n -2 | tail -n -5
```

### list 10 largest folders
```
sudo du -h --max-depth=1 / 2> /dev/null | sort -hr | tail -n +2 | head
```

```
find . -type f -size +100M
```


### log errors:
```
journalctl -p err -b
```

### unity logs
```
ls -lsatr /home/player/.config/unity3d/CinemaTaztic/CinemaGame
```

examples:
```
/home/player/Assets/logs/
```

```
/home/player/Assets/cinemataztic-games/63565761afc66b001423a6f0
```