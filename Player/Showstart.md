---
tags: ShowStart, Networking, Curl, Netcat, GameStart, Games
---

### Internal commands


```
curl localhost:3000/game/start/target/0
```

### connect to the socket

```
nc localhost 4455
```


### connect from outside
```
nc IP_ADDRESS 3120
```
## old:

### Send the gameStart action with target 1
```
{"action": "gameStart", "target": "1"}   
```

## New commands

### Connect to the new server
```
nc localhost 4455
```

### Send the showStart action with target 1
```
{"action": "showStart", "target": "1"}
```
