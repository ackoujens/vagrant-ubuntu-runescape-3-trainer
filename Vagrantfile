Vagrant.configure(2) do |config|

  config.vm.box = "amplifi/ubuntu-desktop-14.04.minimal"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
    # vb.cpus = 4
    # config.vm.synced_folder "./vagrant_home", "/home/vagrant"
  end

  config.ssh.forward_agent = true

  config.vm.provision "file", source: "./scripts", destination: "/tmp/vagrant/scripts"

  config.vm.provision "shell", inline: <<-SHELL

    . /tmp/vagrant/scripts/utils/before.sh;
    . /tmp/vagrant/scripts/utils/import-install-scripts.sh;
    . /tmp/vagrant/scripts/utils/install-packages.sh;
    . /tmp/vagrant/scripts/utils/after.sh;

    IMPORTS=(libglew libpng runescape-launcher xmacro)
    PACKAGES=(libglew libpng runescape-launcher xmacro)

    before

    import-install-scripts $IMPORTS
    install-packages $PACKAGES

    after

   SHELL

end
