# Tidal Connect for rAudio 64 bit

The simple script install Tidal Connect for rAudio 64 bit (Pi 4)
>
> wget -O - https://raw.githubusercontent.com/lovehifi/tidal-raudio-pi4/main/install | sh
>
This script will install Docker and clone the Tidal Connect Docker repository from [GioF71/tidal-connect](https://github.com/GioF71/tidal-connect/) and install it on your rAudio.
>
------------
>
- Tidal Connect operates based on it with the DAC configuration automatically set from rAudio's '/etc/asound.conf'.
- If you are playing Squeezelite, please switch the Squeezelite status to Player Off and reboot before playing music from Tidal Connect.
- You can edit/add the DNS in this file with the command nano /root/tidal-connect-docker/Docker/.env
>
Sample:
> DNS_SERVER_LIST=8.8.8.8
- At times, if you encounter a successful Tidal Connect connection but there is no sound, try restarting. The command to restart Tidal Connect is
> systemctl restart tidal
------------------

## New update #1
#### Support for [LMS & Squeezelite](https://github.com/lovehifi/raudiolms-64bit) on rAudio
>
With this update, you no longer need to reboot when you want to listen to Tidal Connect. Simply press SQ64-rAudio Player Off and wait a few seconds, Tidal Connect will be ready for you to connect. When you press Player On and wait a few seconds, Tidal Connect will automatically turn off to reduce load on your system.
>
> wget -O - https://raw.githubusercontent.com/lovehifi/tidal-raudio-pi4/main/update | sh
>
--------
## Tips
Change DNS
>
> nano /root/tidal-connect/.env
>
Sample.env file:
FRIENDLY_NAME=TIDAL Connect
MODEL_NAME=Pi 4
MQA_PASSTHROUGH=false
MQA_CODEC=false
DNS_SERVER_LIST=8.8.8.8 8.8.4.4

----------
>
Special thanks to GioF71 for creating it. I highly appreciate its stability and, above all, the enthusiastic support on his repository [GioF71/tidal-connect](https://github.com/GioF71/tidal-connect/)
>
>
## Tidal Connect for rAudio 32 bit (Pi 2, Pi 3)
>
https://github.com/lovehifi/tidal-raudio

