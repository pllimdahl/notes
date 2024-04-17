---
tags:
  - CommonTasks
test: 
general:
---

```
sudo echo -e "\n" && echo -e "STARTING HEALTH CHECK" && echo -e "\n" && echo -e "SCREEN RES AND OUTPUT:\n" && sudo runuser - player -c 'export DISPLAY=:0 && xrandr | grep HDMI-0' && echo -e "\nCHECKING NETWORK:\n" && echo -e "IP and MAC: `hostname --ip-address`\n" && ping -c1 api.cinemataztic.com > /dev/null ; if [ $? -eq 0 ]; then echo -e "\n---------- API is reachable ----------\n"; else echo -e "\n----------API not reachable---------\n"; fi &&echo -e "CHECKING VERSIONS:\n" && echo  "cinead-d `dpkg -s cinead-d | grep -i version`" && echo "cinead-p `dpkg -s cinead-p | grep -i version`" && echo "cinemataztic-config `dpkg -s cinemataztic-config | grep -i version`" && echo "cinemataztic-player `dpkg -s cinemataztic-player | grep -i version`" && echo -e "cinematazticio24 `dpkg -s cinematazticio24 | grep -i version`\n" && echo -e "CHECKING SERVICES:\n" &&  echo "cinemataztic-player status:" && systemctl is-active cinemataztic-player.service && echo "cinematazticio24 status:" && systemctl is-active cinematazticio24.service && echo "cinead-d status:" && systemctl is-active cinead-d.service && echo -e "\n"
```







`echo "cinemataztic-config `dpkg -s cinemataztic-config | grep -i version`"`



