---
tags: services, CommonTasks
---

ok so far so good:

MSI bundkort og HWE 5.13/5.15 virker ikke med den nyeste nvidia driver...  geninstallation af driveren hjælper

MED secure boot enabled kræver det en tekniker ved maskinen

ASUS bundkort virker 100% med HWE (bortset fra install fejl python osv)

### SEE MOTHERBOARD INFO
 
 ```sudo dmidecode -t 2 ```

`dmidecode -s bios-version`

### graphics: 

`lshw -C display`


`sudo truncate -s 0 /var/log/apt/term.log`

`sudo dpkg --configure -a` 

`sudo apt-get update && sudo apt-get dist-upgrade`


### remove and reinstall nvidia

`sudo apt update`
`sudo apt remove '^nvidia'`
`sudo apt autoremove`

`sudo apt-get purge 'nvidia*'`
`sudo apt-get autoremove`


REBOOT

`sudo apt install nvidia-driver-465`

aaaand reboot



evt:

`sudo nvidia-xconfig` 

for at replace xorg.conf



