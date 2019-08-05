#!/bin/bash

# Load saved workspace layouts
i3-msg "workspace 1; append_layout ~/.config/i3/layouts/ws-1.json"&
i3-msg "workspace 2; append_layout ~/.config/i3/layouts/ws-2.json"&
i3-msg "workspace 3; append_layout ~/.config/i3/layouts/ws-3.json"&
i3-msg "workspace 4; append_layout ~/.config/i3/layouts/ws-4.json"&

# Startup programs to be swallowed by i3
#  ws-1
urxvt -name "w1t1" -e $SHELL -c 'status; $SHELL -i'&
urxvt -name "w1t2" -e $SHELL -c 'neofetch; $SHELL -i'&
urxvt -name "w1t3" -e $SHELL -c 'gotop'&
#  ws-2
firefox -browser&
#  ws-3
atom&
urxvt -name "w3t1" -e $SHELL -c '$SHELL -i'&
#  ws-4
mailspring&
#  ws-9
i3-msg 'workspace 9; exec urxvt -e $SHELL -c 'cava''
#  ws-10
spotify&

# Other startup programs
tunefans&
dunst -config ~/.config/dunst/dunstrc&


i3-msg "workspace 1"
