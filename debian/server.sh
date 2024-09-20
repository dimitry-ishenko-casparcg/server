#!/bin/bash

server=casparcg-server-2.4

[[ -n "$CASPARCG_SERVER_ROOT" ]] && cd "$CASPARCG_SERVER_ROOT"
[[ -e casparcg.config ]] || cp /usr/share/$server/casparcg.config .

sensible-terminal -T $server -e $server &
sleep 1
xprop -name $server -f WM_CLASS 8s -set WM_CLASS $server

wait
