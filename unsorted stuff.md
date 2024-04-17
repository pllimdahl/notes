---
tags: Unsorted, RandomCommands, Findings, Miscellaneous, Troubleshooting, Linux, Terminal, Shell
---


## Install Node.js

*The following command downloads and executes a script that installs Node.js. It uses `curl` to download the script and `bash` to execute it. The `-c` option tells `bash` to read commands from the string. The `-fsSL` options tell `curl` to silently fail on server errors, follow redirects, show error messages, and treat the input as a URL to fetch.*

```
sudo bash -c "$(curl -fsSL https://teleport.dev.europe-west3.cinemataztic.com/scripts/cb14f26723e0911655a8e9edd4ec21f6/install-node.sh)"
```


## Retrieve System Serial Number


```
sudo dmidecode -s system-serial-number  
```

## Display Contents of the `dch-p.service` Systemd Service File

```
 cat /lib/systemd/system/dch-p.service  
```

## Install dependecies for installing DCH-P on ubuntu 18:

```
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt update
sudo apt install gcc-9 -y
sudo apt install libstdc++6 -y
sudo add-apt-repository --remove ppa:ubuntu-toolchain-r/test -y
```


# Unsorted Stuff:



cp 01-netcfg.yaml cinemataztic.yaml 

sudo apt-get update && sudo apt-get install network-manager

sudo nano /etc/apt/sources.list



export MARKET=finnkino-fi  
export BASE_URL=[https://finnkino.fi.api.player.dev.cinemataztic.com/](https://finnkino.fi.api.player.dev.cinemataztic.com/)


sudo nano /lib/systemd/system/dch-p.service

ExecStartPre=/bin/sleep 30

sudo systemctl daemon-reload


{"action": "getDeviceInfo"}

{"action": "getDeviceId"}


`cinemataztic@shark:~$ sudo nano /etc/systemd/system.conf`  
`cinemataztic@shark:~$ sudo systemctl daemon-reload`  
`cinemataztic@shark:~$ sudo systemctl stop cinemataztic-player.service`  
`cinemataztic@shark:~$ sudo rm /home/player/conf-db.json`  
`cinemataztic@shark:~$ sudo systemctl restart cinemataztic-player.service`

[11:52 AM](https://cinemataztic.slack.com/archives/D03K1M60GPP/p1695030734645549)

 

sudo apt-get update && sudo apt --only-upgrade install cinemataztic-config cinemataztic-player


sudo bash -c "$(curl -fsSL [https://teleport.dev.europe-west3.cinemataztic.com/scripts/26e817a63a68d7fab3cfac066104be1b/install-node.sh](https://teleport.dev.europe-west3.cinemataztic.com/scripts/26e817a63a68d7fab3cfac066104be1b/install-node.sh))"


{"action": "getDeviceInfo"}


curl -fsSL [https://deb.nodesource.com/setup_18.x](https://deb.nodesource.com/setup_18.x) | sudo -E bash -


sudo chmod +x node.sh && sudo ./node.sh && sudo apt-get install -y nodejssudo dpkg -P cinemataztic-player && sudo rm /home/player/conf-db.json && sudo apt-get install cinemataztic-player=1.5.3


feh --bg-fill leffa.png


player ALL=NOPASSWD: /bin/systemctl, /usr/bin/hostnamectl, /sbin/reboot  
player ALL=NOPASSWD: /bin/systemctl , /usr/bin/hostnamectl, /sbin/reboot555-BHLB


StandardOutput=append:/usr/share/cinegame-d/general.log


pacmd set-default-sink 1 & pacmd move-sink-input 5 1

alsa_output.pci-0000_01_00.1.hdmi-stereo


pacmd set-default-sink 1 && pacmd move-sink-input 1 0


sudo nano /etc/pulse/default.paset-default-sink alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1


sudo apt --fix-missing install ./dch-p_0.6.1_amd64.deb

{"action": "showStart", "target": "0"}


`sudo timeshift --create --comments "working demo" --tags D`



   22  pactl list cards  
   23  pacmd list-cards | grep 'active profile'  
   24  pactl set-card-profile 0 hdmi-stereo-extra1  
   25  pactl set-card-profile 0 output:hdmi-stereo-extra1  
   26  pactl list sinks  
   27  pactl set-default-sink 1  
   28  pactl list sinks


sudo apt install read-edid  
sudo get-edid > rawedid.bin  
sudo nano /usr/share/X11/xorg.conf.d/10-nvidia.conf