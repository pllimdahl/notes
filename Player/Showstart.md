---
tags: CommonTasks
---

intern:
```
curl "localhost:3000/show/start?target=0"783 
```

```
curl localhost:3000/game/start/target/0
```

ekstern 
```
nc localhost 4455
```

```
k
```

old: 
```
nc localhost 3120
```

```
{"action": "gameStart", "target": "1"}   
```

New:

```
nc localhost 4455
```

```
{"action": "showStart", "target": "1"}
```
