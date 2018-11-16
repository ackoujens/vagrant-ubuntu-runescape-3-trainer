#!/bin/sh
. /tmp/vagrant/scripts/utils/isInstalled.sh

install_libglew() {
	package=libglew1.10

	if isInstalled $package; then return; fi
	echo "Installing $package ..."

	# INSTALL
	sudo apt-get update && apt-get install -y $package
}