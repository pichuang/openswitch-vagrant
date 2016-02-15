# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # Discover Vagrant Boxes
  # https://atlas.hashicorp.com/boxes/search?utf8=✓&sort=&provider=virtualbox&q=ubuntu
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "ops-builder"
  #config.vm.network :private_network, ip: "10.211.55.91"

  # Set the name of the VM. See: http://stackoverflow.com/a/17864388/100134
  config.vm.define :ops_builder do |ops_builder|
  end

  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  #Configuration Management -- Ansible
#  config.vm.provision "ansible" do |ansible|
#    ansible.playbook = "provisioning/playbook.yml"
#    ansible.inventory_path = "provisioning/hosts"
#    ansible.sudo = "true"
#  end
end
