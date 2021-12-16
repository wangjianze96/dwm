#!/bin/bash

/bin/bash ~/scripts/dwm_refresh.sh &

fcitx5 &

picom &
nitrogen --restore &

~/scripts/autostart_wait.sh

