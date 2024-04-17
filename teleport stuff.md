---
tags: CommonTasks
---
#CommonTasks 


- [[#rm teleport|rm teleport]]
- [[#Permanent add link|Permanent add link]]
- [[#login|login]]

### rm teleport

```
sudo pkill -f teleport && sudo rm -rf /var/lib/teleport && sudo rm -f /etc/teleport.yaml && sudo rm -f /usr/local/bin/teleport /usr/local/bin/tctl /usr/local/bin/tsh && sudo apt-get remove teleport
```


### Permanent add link

```
sudo bash -c "$(curl -fsSL [https://teleport.dev.europe-west3.cinemataztic.com/scripts/cb14f26723e0911655a8e9edd4ec21f6/install-node.sh](https://teleport.dev.europe-west3.cinemataztic.com/scripts/cb14f26723e0911655a8e9edd4ec21f6/install-node.sh))"
```

### login 


   
   ```
   tsh login --proxy=teleport.dev.europe-west3.cinemataztic.com:443 --auth=local --user=lasse teleport.dev.europe-west3.cinemataztic.com

```


