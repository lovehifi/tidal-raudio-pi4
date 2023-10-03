# Tidal Connect for rAudio 64 bit

The simple script install Tidal Connect for rAudio 64 bit (Pi 4)
>
> wget -O - https://raw.githubusercontent.com/lovehifi/tidal-raudio-pi4/main/install | sh
>
This script will install Docker and clone the Tidal Connect Docker repository from https://github.com/code-SL/tidal-connect-docker and install it on your rAudio.
>
-------------
>
After the installation is complete, you can modify the DAC configuration in this file: /root/tidal-connect-docker/Docker/entrypoint.sh. However, the --playback-device "default" follows the value of rAudio, meaning rAudio is responsible for setting up the Sound Card, and Tidal Connect operates based on it with the value being "default."

You can edit/add the DNS in this file with the command nano /root/tidal-connect-docker/Docker/.env
>
Sample:
> DNS_SERVER_LIST=8.8.8 8.8.4.4
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
>
## Tidal Connect for rAudio 32 bit (Pi 2, Pi 3)
>
https://github.com/lovehifi/raudiolms-32bit
