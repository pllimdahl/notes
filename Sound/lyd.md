---
tags: Audio, Troubleshooting, Linux
---

# Common tasks

### Unmute
* This command unmutes the master volume *
```
amixer set Master unmute
```

### Reload sound
* These commands stop the ALSA utility, force reload ALSA, and then start the ALSA utility again *
```
sudo /etc/init.d/alsa-utils stop
sudo alsa force-reload
sudo /etc/init.d/alsa-utils start
```

### Set default
* These commands set the default sound sink to 0 *
```
sudo su player
export DISPLAY=:0
pactl list sinks
pactl set-default-sink 0
```

#### Modern Way
* These commands set the default sound sink and list all sound sources *
```
pacmd set-default-sink
pacmd list-sources
```

### Check sound levels
* This command checks the master volume level *
```
amixer -c 1 -M -D pulse get Master | grep -o -E [[:digit:]]+%
```

### Check default output
* These commands list all sound sinks and their indices, and set the card profile *
```
pacmd list-sinks | grep -e 'name:' -e 'index:'
pacmd set-card-profile
```

### Alsa card
* This is the identifier for a specific ALSA card *
```
alsa_card.pci-0000_01_00.1
```

### Set sound levels globally
* These commands set the master volume level for all speakers, front speakers, and individual front speakers, respectively *
```
amixer -D pulse sset Master 100% = all speakers to 100%
amixer -D pulse sset Master Front 100% = front 100% (or whatever you specify)
amixer -D pulse sset Master Front 100%,50% = front left 100% , front right 50 %
```

### Increase volume
* This command increases the master volume by 5% *
```
amixer -D pulse sset Master 5%+
```

### Decrease volume
* This command decreases the master volume by 5% *
```
amixer -D pulse sset Master 5%-
```

### Mute specific sink
* This command mutes a specific sink, replace 'sink_number' with the number of the sink you want to mute *
```
pactl set-sink-mute sink_number 1
```

### Unmute specific sink
* This command unmutes a specific sink, replace 'sink_number' with the number of the sink you want to unmute *
```
pactl set-sink-mute sink_number 0
```

### Change volume of specific sink
* This command sets the volume of a specific sink to 50%, replace 'sink_number' with the number of the sink you want to change the volume of *
```
pactl set-sink-volume sink_number 50%
```

### List all audio devices
* This command lists all audio devices *
```
aplay -l
```

### Test sound output
* This command plays a test sound *
```
speaker-test -c 2
```
# Troubleshooting common sound issues

### ISSUE: NO SOUND ONLY DUMMY OUTPUT
* These commands list all sound cards, edit the ALSA configuration file, and reboot the system *
```
aplay -l
sudo nano /etc/asound.conf
defaults.pcm.card 0
defaults.pcm.device 3
reboot
```

### ABSOLUTELY NO SOUND
* These commands remove and reinstall the ALSA and PulseAudio packages if the default sound output is not correct *
```
sudo apt remove --purge alsa-base pulseaudio
sudo apt install alsa-base pulseaudio
```
Default sound is: `alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1`

### DOCS: DUMMY OUTPUT NO SINKS
* This is a link to a guide for fixing the 'No Sound Dummy Output' issue *
[Fix No Sound Dummy Output Issue](https://www.linuxuprising.com/2018/06/fix-no-sound-dummy-output-issue-in.html)

### Set default sound on newly installed machines
* This command sets the default sound sink on a new machine *
```
pacmd set-default-sink alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1
```





