#!/bin/sh
. /tmp/vagrant/scripts/utils/isInstalled.sh

install_xmacro() {
	package=xmacro

	if isInstalled $package; then return; fi
	echo "Installing $package ..."

	# INSTALL
	sudo apt-get update && apt-get install -y $package
}