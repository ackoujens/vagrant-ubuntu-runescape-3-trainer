#!/bin/sh
. /tmp/vagrant/scripts/utils/isInstalled.sh

# see https://www.linuxbabe.com/ubuntu/install-google-chrome-ubuntu-16-04-lts
install_runescape-launcher() {
	package=unix-runescape-client

	if isInstalled $package; then return; fi
	echo "Installing and configuring $package ..."

	# PREPARE
	sudo apt-add-repository ppa:hikariknight/unix-runescape-client

	# INSTALL
	apt-get update && apt-get install -y $package

	#rm /etc/apt/sources.list.d/google-chrome.list
}