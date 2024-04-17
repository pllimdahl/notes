#!/bin/bash
# Set the desired volume level
VOLUME='+100'

# Loop over all available audio sinks
for SINK in $(pacmd list-sinks | grep 'index:' | cut -b12-)
do
  # Set the volume for the current sink
  pactl set-sink-volume $SINK $VOLUME
done