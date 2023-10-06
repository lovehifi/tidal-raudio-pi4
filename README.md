# Tidal Connect for rAudio 64 bit

The simple script install Tidal Connect for rAudio 64 bit (Pi 4)
>
> wget -O - https://raw.githubusercontent.com/lovehifi/tidal-raudio-pi4/main/install | sh
>
This script will install Docker and clone the Tidal Connect Docker repository from [GioF71/tidal-connect](https://github.com/GioF71/tidal-connect/) and install it on your rAudio.
>
>
Special thanks to GioF71 for creating it. I highly appreciate its stability and, above all, the enthusiastic support on his repository [GioF71/tidal-connect](https://github.com/GioF71/tidal-connect/)
>
------------
>
-- Tidal Connect operates based on it with the DAC configuration automatically set from rAudio's '/etc/asound.conf'.
-- You can edit/add the DNS in this file with the command nano /root/tidal-connect-docker/Docker/.env
>
Sample:
> DNS_SERVER_LIST=8.8.8.8
>

------------------
>
-- **If you are playing Squeezelite (SQ), please switch the Squeezelite status to Player Off ans reboot before playing music from Tidal Connect.**
>

-- At times, if you encounter a successful Tidal Connect connection but there is no sound, try restarting. The command to restart Tidal Connect is

> systemctl restart tidal
------------------
>
Special thanks to GioF71 for creating it. I highly appreciate its stability and, above all, the enthusiastic support on his repository https://github.com/GioF71/tidal-connect
>
---------------
>
## Tidal Connect for rAudio 32 bit (Pi 2, Pi 3)
>
https://github.com/lovehifi/tidal-raudio
