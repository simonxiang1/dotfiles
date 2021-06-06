#!/usr/bin/sh

if (($(ps -aux | grep picom | wc -l) > 1))
then
  polybar-msg hook blur 1
  pkill -9 picom
else
  polybar-msg hook blur 2
  picom --config /home/simon/.config/picom/picom.conf
fi
