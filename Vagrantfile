# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :compute1 do |compute1|
    compute1.vm.box = "geerlingguy/centos7"
    compute1.vm.hostname = "compute1.example.com"
    compute1.vm.network :private_network, ip: "172.20.4.11"
  end
  config.vm.define :controller1 do |controller1|
    controller1.vm.box = "geerlingguy/centos7"
    controller1.vm.hostname = "controller1.example.com"
    controller1.vm.network :private_network, ip: "172.20.4.21"
  end
  config.vm.box_check_update = true
  config.vm.synced_folder ".", "/etc/ansible/roles/ansible-esxi-openstack"
  config.vm.synced_folder "./vagrant", "/vagrant"
  config.vm.provider "virtualbox" do |v|
    v.cpu = 2
    v.memory = "2048"
  end
  config.vm.provision "shell", path: "./vagrant/provision.sh"
end
