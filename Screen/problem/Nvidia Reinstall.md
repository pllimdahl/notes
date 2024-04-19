`---
tags: Nvidia, Reinstall, Graphics, Motherboard, BIOS, HWE, SecureBoot, CommonTasks, Services
---`





MSI motherboard and HWE 5.13/5.15 do not work with the latest Nvidia driver... reinstalling the driver helps

WITH secure boot enabled, it requires a technician at the machine

ASUS motherboard works 100% with HWE (except for install error python etc)

### SEE MOTHERBOARD INFO

 *Get detailed information about the motherboard*
 ```sudo dmidecode -t 2 ```

*Get the BIOS version*
`dmidecode -s bios-version`

### graphics: 

*Display information about the graphics card*
`lshw -C display`

*Clear the apt term.log file*
`sudo truncate -s 0 /var/log/apt/term.log`

*Configure all unpacked but unconfigured packages*
`sudo dpkg --configure -a` 

*Update the package lists and upgrade the system*
`sudo apt-get update && sudo apt-get dist-upgrade`


### remove and reinstall nvidia

*Update the package lists*
`sudo apt update`

*Remove all packages starting with 'nvidia'*
`sudo apt remove '^nvidia'`

*Remove all unused packages*
`sudo apt autoremove`


*Purge all packages starting with 'nvidia'*
`sudo apt-get purge 'nvidia*'`

*Remove all unused packages*
`sudo apt-get autoremove`


*REBOOT the system now*

`sudo apt install nvidia-driver-470`

*and do a final reboot*



*Replace the xorg.conf file*

`sudo nvidia-xconfig` 





