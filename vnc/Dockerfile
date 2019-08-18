#Start with Ubuntu 16.04 base image
FROM apcai/devbox-lxde:16.04

MAINTAINER Anping Cai (Mike) <anpingcai@gmail.com>

#RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
#  leafpad \
#  firefox \
#  lxde-core \
#  lxterminal \
#  tightvncserver \
#  xrdp \
#  autocutsel

RUN add-apt-repository ppa:notepadqq-team/notepadqq && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      notepadqq \
      firefox \
      vim \
      vnc4server \
      xrdp
RUN DEBIAN_FRONTEND=noninteractive apt-get autoremove
RUN DEBIAN_FRONTEND=noninteractive apt-get clean

# Set user for VNC server (USER is only for build)
ENV USER root
#ARG PASSWORD=passw0rd

# Adding non-root user to run VNC.
#RUN adduser --disabled-password $USER

# Copy password file, default password for user and VNC
COPY password.txt ./

# Set user password and add user to sudo group
#RUN cat /home/$USER/password.txt /home/$USER/password.txt | passwd $USER && usermod -aG sudo $USER

# Change password with > docker exec <id> bash -c "echo -e '<password>\n<password>\nn' | vncpasswd"
RUN chmod 777 password.txt && cat password.txt password.txt | vncpasswd && rm password.txt

# Run vncserver once to initialize.  Also copy in the correct xstartup file.
RUN vncserver && vncserver -kill :1
RUN mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
COPY xstartup /$USER/.vnc/xstartup
RUN ls ~/.vnc/ && \
  chmod +x ~/.vnc/xstartup

# Expose VNC port
EXPOSE 5901

# Set XDRP to use TightVNC port
RUN sed -i '0,/port=-1/{s/port=-1/port=5901/}' /etc/xrdp/xrdp.ini

# Add desktop icons for lxterminal, firefox, and notepadqq
COPY ./Desktop /$USER/Desktop
RUN chmod 664 ~/Desktop/*.desktop

# Modify lxterminal app for correct execution
COPY /usr/share/applications/ /usr/share/applications/
RUN chmod 644 /usr/share/applications/

# Add custom configs for some apps
COPY ./.config /$USER/.config/
RUN chmod -R 700 ~/.config/
RUN chmod 664 ~/.config/lxterminal/lxterminal.conf
RUN chmod 664 ~/.config/lxpanel/LXDE/panels/panel
RUN chmod 664 ~/.config/pcmanfm/LXDE/desktop-items-0.conf

# Copy VNC script that handles restarts
COPY vnc.sh /opt/
RUN chmod +x /opt/vnc.sh
CMD ["/opt/vnc.sh"]
