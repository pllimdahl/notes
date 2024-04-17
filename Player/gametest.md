`nc localhost PORTNUMMER  {"action":"gameStart","target":"0"}`


`nc localhost 44659  {"action":"gameStart","target":"0"}`


`First, listen using the quoted code, or simply using NC:`

`nc -l -p 1234`

`{"action":"gameStart","target":"0"}`

`nc localhost -p 44659 {"action":"gameStart","target":"1"}`

Log ind på maskinen
Åbn netcat på port 3120 localhost: nc localhost 3120

Send start cue (indtast følgende og tryk enter): `{"action": "gameStart", "target": "1"}`



