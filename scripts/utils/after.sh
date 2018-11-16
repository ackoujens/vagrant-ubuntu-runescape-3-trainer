#!/bin/sh

after() {	
	echo "Nothing to do after"
	#echo "Executing apt-get upgrade -y >>>>>>>>>>>>>>>>>>>>>>>"
    #DEBIAN_FRONTEND=noninteractive
    #apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade

    #systemctl enable apt-daily.service
    #systemctl enable apt-daily.timer
    #systemctl enable unattended-upgrades.service

    # Autologin Vagrant Account
    sudo mkdir /etc/systemd/system/getty@tty1.service.d
    {
        echo '[Service]'
        echo 'ExecStart='
        echo 'ExecStart=-/sbin/agetty --noissue --autologin vagrant %I $TERM'
        echo 'Type=idle'
    } >/etc/systemd/system/getty@tty1.service.d/override.conf

    #sudo dpkg-reconfigure keyboard-configuration
    sudo rm /etc/rc.local
    {
        echo '#!/bin/sh -e'
        # Set keyboard layout
        echo 'loadkeys fr'
        # Run Visual Studio Code
        # echo 'sudo xinit /usr/share/code/code $* -- :1'
        echo 'exit 0'
    } >/etc/rc.local
    sudo chmod +x /etc/rc.local

    reboot
}