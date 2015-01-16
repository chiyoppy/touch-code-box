# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box     = "opscode_ubuntu-14.10_chef-provisionerless"
  config.vm.box_url = "http://www.chiyoppy.com/boxes/opscode_ubuntu-14.04_chef-provisionerless.box"
  config.vm.box_download_checksum = "c9cd101b1ac2cad24831addbdfaf767b"
  config.vm.box_download_checksum_type = "md5"

  config.vm.network "private_network", ip: "192.168.61.100"

  # ansible
  config.vm.provision "shell", path: "setup/install_ansible.sh"
  config.vm.synced_folder "setup", "/home/vagrant/setup"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--memory", "768"]
  end
end
