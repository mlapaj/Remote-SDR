## Intro

My fork for of Remote SDR for Docker.  
You can use it together with your distro instead put whole image to pi
Tested on RPI4 with passive box (no fan)  

## HOWTO - all needs to be done on RPI4 (used original system):

### Using docker 

1. clone repo and install docker
2. create docker image: `sudo docker build -t rpi_remotesdr .`
4. run docker container: `sudo docker run -p 443:443 -p 8002:8002 --privileged -v remsdr_data:/remsdr/data  -v /dev/bus/usb:/dev/bus/usb rpi_remotesdr`
7. open browser and log to https://localhost

### Using docker-compose
as docker plugin:  

`sudo docker compose -f Docker-compose.yaml build`  
`sudo docker compose -f Docker-compose.yaml up`

as docke compose stanalone 

`docker-compose -f Docker-compose.yaml build`  
`docker-compose -f Docker-compose.yaml up`
 

----- BELOW IS ORIGINAL README ----
# Remote-SDR
Remote-SDR remotely controls a SDR receiver and a SDR transmitter from a web browser. Pre-configured for the QO-100 Es'Hail 2 satellite transponder. Can be used for any NBFM, SSB or CW Radio from 1MHz up to 6 GHz. It can works in full duplex with Adalm-Pluto SDR, HackRF One, RTL-SDR, RSP1, RSP1A or SA818.
Signal processing is done using gnuradio-companion and javascript. It runs  on an Orange Pi Zero 2 with Armbian (Bullseye). It runs since version 2.4 on Raspberry 4 using Rasperry Pi OS.

Version 4.0 introduces the new Raspberry OS (Bullseye) for the Raspberry Pi 4B.

Version 4.1 introduces CW signal processing and automatic CW manipulator.

Version 4.2 introduces audio equalizers and noise filters.

Version 4.3 provides additional audio input/output to connect to external software (SSTV, FT8, Digi Modes..)

Version 4.4 allows IP ports selection to use Remote SDR via a NAT (Network Address Translation)

Version 4.5 introduces RTTY and frequency extension below 28MHZ for RTL-SDR V3

Version 5.0 is a complete redesign of the communications and the introduction of the SDR Play RSP1 and RSP1A.

More on https://f1atb.fr

<h3>Version 5.0 Releases :</h3>
Release  v5.0i_rpi4 Image for Raspberry 4
https://github.com/F1ATB/Remote-SDR/releases/tag/v5.0i_rpi4

Release  v5.0i_opiz2 Image for Orange Pi Zero 2
https://github.com/F1ATB/Remote-SDR/releases/tag/v5.0i_opiz2

Version 5.02 is installed directly by clicking on "Look for updates" in the "Tools" page.

The source of Version 5.02 is avalable here:
https://github.com/F1ATB/Remote-SDR/releases/tag/v5.02s

Release  v5.06i_opi1p Image for Orange Pi One Plus
https://github.com/F1ATB/Remote-SDR/releases/tag/v5.06i_opi1p

Release  v5.08i_opi1p Image for Orange Pi One Plus
https://github.com/F1ATB/Remote-SDR/releases/tag/v5.08i_opi1p

<h3>Version 4.5 Releases :</h3>

Release v4.5s Source code here :
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.5s

Release v4.5i_rpi4 Image for Raspberry Pi 4B: 
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.5i_rpi4

Release v4.5i_opiz2 Image for Orange Pi Zero 2:
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.5i_opiz2

<h3>Version 4.4 Releases :</h3>

Release v4.4s Source code here :
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.4s

Release v4.4i_rpi4 Image for Raspberry Pi 4B:
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.4i_rpi4

Release v4.4i_opiz2 Image for Orange Pi Zero 2:
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.4i_opiz2

<h3>Version 4.3 Releases :</h3>

Release v4.3s Source code here :
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.3s

Release v4.3i_rpi4 Image for Raspberry Pi 4B:
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.3i_rpi4

Release v4.3i_opiz2 Image for Orange Pi Zero 2:
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.3i_opiz2

<h3>Version 4.2 Releases :</h3>

Release v4.2i_opiz2 Image for Orange Pi Zero 2
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.2i_opiz2

Release v4.2s Source code here :
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.2s

Release v4.2i_rpi4 Image for Raspberry Pi 4B
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.2i_rpi4

Release v4.2i_opi1 Image for Orange Pi One Plus
https://github.com/F1ATB/Remote-SDR/releases/tag/v4.2i_opi1










