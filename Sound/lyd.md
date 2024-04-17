---
tags: CommonTasks
---
### unmute
```
amixer set Master unmute
```
### reload sound
```
sudo /etc/init.d/alsa-utils stop
``sudo alsa force-reload``
sudo /etc/init.d/alsa-utils start
```


### set default:
```sudo su player
export DISPLAY=:0
pactl list sinks
pactl set-default-sink 0
```

#### Modern Way

```
pacmd set-default-sink
```

```
pacmd list-sources
```

### check sound levels
```
amixer -c 1 -M -D pulse get Master | grep -o -E [[:digit:]]+%
```

```pacmd list-sinks
```


### check default output
```
pacmd list-sinks | grep -e 'name:' -e 'index:'
```

```
pacmd set-card-profile
```

```
alsa_card.pci-0000_01_00.1
```




### set sound levels globally
```

amixer -D pulse sset Master 100% = all speakers to 100%

amixer -D pulse sset Master Front 100% = front 100% (or whatever you specify)

amixer -D pulse sset Master Front 100%,50% = front left 100% , front right 50 %
```





### ISSUE: NO SOUND ONLY DUMMY OUTPUT::::


`aplay -l`

`sudo nano /etc/asound.conf`

`defaults.pcm.card 0`
`defaults.pcm.device 3`

reboot


### ABSOLUTELY NO SOUND:


and default sound output from  `pacmd list sinks | grep name:`  is  `alsa_output.pci-0000_01_00.1.hdmi-stereo` instead of `alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1`
do
`sudo apt remove --purge alsa-base pulseaudio`
`sudo apt install alsa-base pulseaudio`

default sound is: alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1

### DOCS: DUMMY OUTPUT NO SINKS:
https://www.linuxuprising.com/2018/06/fix-no-sound-dummy-output-issue-in.html
### Set default sound on newly installed machines:

```
pacmd set-default-sink alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1
```




