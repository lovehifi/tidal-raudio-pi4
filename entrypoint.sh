#!/bin/bash

#export LD_LIBRARY_PATH=/app/ifi-tidal-release/lib
echo "Starting Speaker Application in Background (TMUX)"
/usr/bin/tmux new-session -d -s speaker_controller_application '/app/ifi-tidal-release/bin/speaker_controller_application'

echo "Starting TIDAL Connect.."
/app/ifi-tidal-release/bin/tidal_connect_application \
   --tc-certificate-path "/app/ifi-tidal-release/id_certificate/IfiAudio_ZenStream.dat" \
   --playback-device "default" \
   -f "rAudio" \
   --codec-mpegh true \
   --codec-mqa false \
   --model-name "Pi" \
   --disable-app-security false \
   --disable-web-security false \
   --enable-mqa-passthrough false \
   --log-level 0 \
   --enable-websocket-log "0" \
   
echo "TIDAL Connect Container Stopped.."
