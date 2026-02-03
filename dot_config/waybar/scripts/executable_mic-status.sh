#!/bin/bash

# Function to get mic status and output JSON
get_mic_status() {
    if [[ $(pamixer --default-source 56 --get-mute) == "true" ]]; then
        echo '{"text": "󰍭", "class": "muted", "tooltip": "Microphone: Muted"}'
    else
        echo '{"text": "󰍬", "class": "unmuted", "tooltip": "Microphone: Unmuted"}'
    fi
}

# Output initial status
get_mic_status

# # Subscribe to PulseAudio events and update on source changes
pactl subscribe | grep --line-buffered "Event 'change' on source" | while read -r _; do
    get_mic_status
done
