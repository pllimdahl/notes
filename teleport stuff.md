---
tags: Teleport, Linux, Administration, Login, Uninstall
---
# Common Tasks 

- [[#Uninstall Teleport|Uninstall Teleport]]
- [[#Permanent Add Link|Permanent Add Link]]
- [[#Login|Login]]

### Uninstall Teleport
<!-- This command completely removes Teleport from your system -->
```
sudo pkill -f teleport && sudo rm -rf /var/lib/teleport && sudo rm -f /etc/teleport.yaml && sudo rm -f /usr/local/bin/teleport /usr/local/bin/tctl /usr/local/bin/tsh && sudo apt-get remove teleport
```

### Permanent Add Link
<!-- This command downloads and runs a script from the provided URL, which is used to install a node -->
```
sudo bash -c "$(curl -fsSL [https://teleport.dev.europe-west3.cinemataztic.com/scripts/cb14f26723e0911655a8e9edd4ec21f6/install-node.sh](https://teleport.dev.europe-west3.cinemataztic.com/scripts/cb14f26723e0911655a8e9edd4ec21f6/install-node.sh))"
```

### Login 
<!-- This command logs you into the Teleport proxy at the specified address with the specified user -->
```
tsh login --proxy=teleport.dev.europe-west3.cinemataztic.com:443 --auth=local --user=lasse teleport.dev.europe-west3.cinemataztic.com
```