#!/bin/bash

if grep -q "dtparam=audio=on" /boot/config.txt; then
sudo sed -i '/dtparam=audio=on/d' /boot/config.txt
else
echo "No dtparam=audio=on"
fi

echo "Off the sound onboard"
grep -q "dtparam=audio=off" /boot/config.txt
if [ $? -eq 0 ]; then
echo "onboard off"
else
echo "dtparam=audio=off" | sudo tee -a /boot/config.txt
echo "onboard to off"
fi

#export LD_LIBRARY_PATH=/app/ifi-tidal-release/lib
echo "Starting Speaker Application in Background (TMUX)"
/usr/bin/tmux new-session -d -s speaker_controller_application '/app/ifi-tidal-release/bin/speaker_controller_application'

# Extract the card number from rAudio
card=$(grep -oP '(?<=defaults.pcm.card ).*' /etc/asound.conf)
echo "Card number: $card"

# Extract the corresponding device info for the card number
device_info=$(awk -v card_num="$card" -F= '$1 ~ "device#"card_num {print $2}' <( /app/ifi-tidal-release/bin/ifi-pa-devs-get ))
echo "Device info for the card number: $device_info"

echo "Starting TIDAL Connect.."
/app/ifi-tidal-release/bin/tidal_connect_application \
   --tc-certificate-path "/app/ifi-tidal-release/id_certificate/IfiAudio_ZenStream.dat" \
   --playback-device "$device_info" \
   -f "rAudioPi4" \
   --codec-mpegh true \
   --codec-mqa false \
   --model-name "Pi4" \
   --disable-app-security false \
   --disable-web-security false \
   --enable-mqa-passthrough false \
   --log-level 0 \
   --enable-websocket-log "0" \
   
echo "TIDAL Connect Container Stopped.."
