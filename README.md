# Tidal Connect for rAudio 64 bit

The simple script install Tidal Connect for rAudio 64 bit (Pi 4)
>
> wget -O - https://raw.githubusercontent.com/lovehifi/tidal-raudio-pi4/main/install | sh
>
This script will install Docker and clone the Tidal Connect Docker repository from https://github.com/code-SL/tidal-connect-docker and install it on your rAudio.
>
-------------
>
Tidal Connect operates based on it with the DAC configuration automatically set from rAudio's '/etc/asound.conf'.
>

You can edit/add the DNS in this file with the command nano /root/tidal-connect-docker/Docker/.env
>
Sample:
> DOCKER_DNS=8.8.8.8
>
---------------
OFF Tidal Connect
> systemctl stop tidal
>
---------------
ON Tidal Connect
> systemctl restart tidal
>
------------------
Note:
>
If you are playing Squeezelite, please switch the Squeezelite status to Power off before playing music from Tidal Connect.
>
## Tidal Connect for rAudio 32 bit (Pi 2, Pi 3)
>
https://github.com/lovehifi/tidal-raudio
