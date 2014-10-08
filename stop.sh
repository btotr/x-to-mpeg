#!/bin/sh
kill -9 `ps -ef | grep 'chrome\|node\|Xvfb' | grep -v grep | awk '{print $2}'`