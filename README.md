# reference system

## dependencies

- vagrant
- virtualBox

## install

$ vagrant up

## usage

$ ./screen-simulator

### tmp screen-simulator
in xterm (enable client connection in pref.)

$ ssh -X vagrant@172.16.107.100
$  google-chrome --remote-debugging-port=9222 --enable-logging --logging-level=1 --disable-web-security --enable-javascript-harmony --user-data-dir=/tmp https://c9.io/btotr/virtualos/workspace/index.html &

## extra  

### enable remote debugging
ssh vagrant@172.16.107.99 -L 9222:localhost:9222
