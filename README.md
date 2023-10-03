# Tidal Connect for rAudio 64 bit

The simple script install Tidal Connect for rAudio 64 bit (Pi 4)
>
> wget -O - https://raw.githubusercontent.com/lovehifi/tidal-raudio-pi4/main/install | sh
>
This script will install Docker and clone the Tidal Connect Docker repository from https://github.com/code-SL/tidal-connect-docker and install it on your rAudio.
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
