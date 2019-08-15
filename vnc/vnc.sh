#!/bin/bash

#xhost +localhost

# Remove VNC lock (if process already killed)
rm /tmp/.X1-lock /tmp/.X11-unix/X1

# Run VNC server with tail in the foreground
#autocutsel -fork
#autocutsel -s CLIPBOARD -fork
#autocutsel -s PRIMARY -fork
#su $USER -c "vncserver :1 -geometry 2160x1350 -geometry 1440x900 -geometry 2880x1800 -geometry 1280x800 -depth 24 && tail -F /root/.vnc/*.log"
vncserver :1 -geometry 1600x1000 -geometry 1280x800 -geometry 1440x900 -geometry 1920x1200 -geometry 2160x1350 -geometry 2880x1800 -depth 24 && tail -F ~/.vnc/*.log
