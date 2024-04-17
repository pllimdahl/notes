
`---
tags: Display,  
---`

#CommonTasks #admin 

### set defaults
```
sudo su player
```

```
export DISPLAY=:0
```

```
xrandr
```

```
xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 60.00
```

```
sudo xrandr --newmode "1920x1080_60.00"
```

```
xrandr -s 1920x1080 -r 60
```

```
sudo get-edid | parse-edid
```


### grep Nvidia erro messages from pb

```
grep -B 10 -A 2 --color  'mismatch\|driver' ansible_log_file.log 
```
### see nvidia card:
```
lshw -C display && lspci -k | grep -A 2 -i "VGA"
```


### see nvidia driver version
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

Copy string
```
xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
```

```
xrandr --addmode HDMI-0 1920x1080_60.00
```




```HDMI-0 connected primary 1024x768+0+0 (normal left inverted right x axis y axis) 0mm x 0mm```

 Usually means HDMI is in wrong port

### If screen is a small square in corner or center of screen:

```
sudo mv /etc/X11/xorg.conf /etc/X11/xorg.conf.backup
sudo reboot
```
### Reload the xorg conf

`sudo nvidia-xconfig`

### Read edid:

```
sudo get-edid | parse-edid
```

### Spoof Edid:

 the command `sudo nvidia-xconfig` generates a xorg.conf file in /etc/X11/ with the needed "Screen" section

then `get-edid > rawedit.bin`

and add these two lines to the "Screen" section in xorg.conf:

```
    Option         "UseEdid" "True"
    Option         "CustomEDID" "HDMI-0:/home/cinemataztic/rawedid.bin"
```

and VIOLA the hdmi sound sink appears after reboot and sound now works through splitter and digital coax
