#!/bin/bash
export DISPLAY=:0
xrandr --output LVDS-1 --auto --output HDMI-2 --primary --auto --right-of LVDS-1

move-workspace(){
  i3-msg workspace $1
  i3-msg move workspace to output primary
}

curr_workspace=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).num')

move-workspace 1
move-workspace 2
move-workspace 3
move-workspace 4
move-workspace 5
move-workspace 8
move-workspace 9
move-workspace 10

i3-msg "workspace $curr_workspace"

setxkbmap -layout us -variant altgr-intl -option 'ctrl:nocaps'
