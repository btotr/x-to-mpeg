#!/bin/sh
export DISPLAY=:10
xsetroot -cursor /blank.xbm /blank.xbm
xsetroot -solid '#ff0000'
Xvfb :10 -screen 0 1280x720x24 -ac &
google-chrome --remote-debugging-port=9222 --enable-logging --logging-level=1 --enable-javascript-harmony --disable-web-security --user-data-dir=/tmp --kiosk --app-window-size=1280,720 --app=http://virtualos.herokuapp.com/ &
node 8297561/transcodeXwindow &