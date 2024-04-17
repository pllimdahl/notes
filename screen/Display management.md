
`---
tags: Display, CommonTasks, Admin, Nvidia, Xrandr, Edid, VGA, Driver
---`

#CommonTasks #admin 

### set defaults

*Switch to the player user*
```
sudo su player
```


*Set the display environment variable*
```
export DISPLAY=:0
```


*List the current display settings*
```
xrandr
```


*Set the HDMI-0 output as the primary display with a resolution of 1920x1080 at 60Hz*
```
xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 60.00
```


*Create a new mode with resolution 1920x1080 at 60Hz*
```
sudo xrandr --newmode "1920x1080_60.00"
```


*Create a new mode with resolution 1920x1080 at 60Hz*
```
xrandr -s 1920x1080 -r 60
```


*Get the Extended Display Identification Data (EDID) for the display*
```
sudo get-edid | parse-edid
```


### grep Nvidia erro messages from pb

*Grep Nvidia error messages from the ansible log file*

```
grep -B 10 -A 2 --color  'mismatch\|driver' ansible_log_file.log 
```

### see nvidia card:

*See Nvidia card details*
```
lshw -C display && lspci -k | grep -A 2 -i "VGA"
```


### see nvidia driver version

*See Nvidia driver version*
```
grep "X Driver" /var/log/Xorg.0.log
```

```
sudo less /var/log/syslog | grep NVRM
```

```
https://codeload.github.com/ansible/awx/zip/refs/tags/17.1.0
sudo service gdm restart
```

### Set non-existing resolution
```
cvt 1920 1080 60
```

*Copy the mode string*




```
xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
```

*Add the new mode to the HDMI-0 output*
```
xrandr --addmode HDMI-0 1920x1080_60.00
```




# Troubleshooting


### Check if the display server is running

*Use the `ps` command to check if the Xorg display server is running*
```
ps -e | grep Xorg
```

### Check the status of the display manager

*Use the `systemctl` command to check the status of the display manager (replace 'gdm' with your display manager)*
```
systemctl status gdm
```



### Check the Xorg log file for errors

*Use the `grep` command to check the Xorg log file for errors*
```
grep EE /var/log/Xorg.0.log
```


### Reconfigure the display manager

*Use the `dpkg-reconfigure` command to reconfigure the display manager (replace 'gdm' with your display manager)*
```
sudo dpkg-reconfigure gdm
```


### Restart the display manager

*Use the `systemctl` command to restart the display manager (replace 'gdm' with your display manager)*

```
sudo systemctl restart gdm
```

## Common issues:


### If the screen is a small square in the corner or center of the screen, backup the xorg.conf file and reboot the system:

```
sudo mv /etc/X11/xorg.conf /etc/X11/xorg.conf.backup
sudo reboot
```
### Reload the xorg configuration

`sudo nvidia-xconfig`

### Read the Extended Display Identification Data (EDID)

```
sudo get-edid | parse-edid
```


## Spoof the EDID. 

### First, generate a new xorg.conf file with the needed "Screen" section. Then, get the EDID and save it to a file. Finally, add the "UseEdid" and "CustomEDID" options to the "Screen" section in the xorg.conf file*

 the command `sudo nvidia-xconfig` generates a xorg.conf file in /etc/X11/ with the needed "Screen" section

then `get-edid > rawedit.bin`

and add these two lines to the "Screen" section in xorg.conf:

```
    Option         "UseEdid" "True"
    Option         "CustomEDID" "HDMI-0:/home/cinemataztic/rawedid.bin"
```


*After rebooting, the HDMI sound sink should appear and sound should work through the splitter and digital coax*