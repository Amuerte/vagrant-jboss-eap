# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.7.2"

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "amuerte/fedora-22-x64"
  #config.vm.box_url = "file://D:/devhome/workspaces/vm/repository/debian-8.0-x64.box"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false

  # Prevent Vagrant from inserting generated public key
  config.ssh.insert_key = false

  # Configuration for the Ansible master machine
  #config.vm.define "master", autostart: false do |master|
  config.vm.define "master" do |master|
    master.vm.network "private_network", ip: "192.168.56.33"
    config.vm.hostname = "ansible"

    master.vm.provider "virtualbox" do |vbmaster|
      vbmaster.check_guest_additions = false
      vbmaster.functional_vboxsf = false
      vbmaster.memory = "512"
      vbmaster.cpus = "1"
    end
    
  end

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080


  # config.vm.synced_folder "../data", "/vagrant_data"

end
