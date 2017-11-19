#!/bin/bash
export DISPLAY=:0

curr_workspace=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).num')

xrandr --auto

i3-msg "workspace $curr_workspace"
