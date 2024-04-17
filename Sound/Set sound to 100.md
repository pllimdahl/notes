---
tags: sound, admin, shell-script
---

# Set Sound to 100%
*This shell script sets the volume of all audio sinks to 100%*

```bash
#!/bin/bash
# Set the desired volume level
VOLUME='+100'

# Loop over all available audio sinks
for SINK in $(pacmd list-sinks | grep 'index:' | cut -b12-)
do
  # Set the volume for the current sink
  pactl set-sink-volume $SINK $VOLUME
done