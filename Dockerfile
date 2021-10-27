FROM raspbian/stretch

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y chromium-browser xserver-xorg-core xserver-xorg-video-fbdev x11-xserver-utils libgl1-mesa-dri matchbox-window-manager xautomation feh xauth libraspberrypi0 libraspberrypi-dev libraspberrypi-doc libraspberrypi-bin xinit curl
#RUN apt-get install -y dropbear
##RUN apt-get install -y xserver-xorg-video-vesa  xorg-video-abi-18

ADD run /bin/run
ADD wallpaper.png /etc/wallpaper.png
#ADD dot-mozilla /root/.mozilla
RUN chmod +x /bin/run
#VOLUME /dev/tty0

RUN adduser --system --uid 5000 --disabled-password --shell /bin/bash  -q chromium
RUN addgroup chromium tty

ADD start-chromium /root/start-chromium

#USER chromium

ENV XINITRC=/root/start-chromium
ENTRYPOINT [ "/bin/run" ]
