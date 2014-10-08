#!/bin/sh
set -e

if [ -e /.installed ]; then
	echo 'Already installed.'

else
	echo ''
	echo 'INSTALLING'
	echo '----------'

	# Add Google public key to apt
	wget -q -O - "https://dl-ssl.google.com/linux/linux_signing_key.pub" | sudo apt-key add -

	# Add Google to the apt-get source list
	echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list
	
	# PPA nodejs
	apt-get update --fix-missing
	apt-get -y install python-software-properties
	add-apt-repository ppa:chris-lea/node.js
	
	apt-get update
	
	# Install Chrome, Xvfb, avconv, git, nodejs
	apt-get -y install google-chrome-stable xvfb libav-tools git nodejs npm curl

	# Install transcoder
	cd ~/
	git clone https://gist.github.com/8297561.git
	cd 8297561
	npm install express

    # cursor
    curl https://c9.io/btotr/the-platform/workspace/blank.xmb > /blank.xbm

	# So that running `vagrant provision` doesn't redownload everything
	touch /.installed
fi
