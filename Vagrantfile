# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.provision :shell, :path => "scripts/update.sh"
  config.vm.provision :shell, :path => "scripts/nginx.sh"
  config.vm.provision :shell, :path => "scripts/mysql.sh"
  config.vm.provision :shell, :path => "scripts/node.sh"
  config.vm.provision :shell, :path => "scripts/node-service.sh"
  # port for nginx
  config.vm.network :forwarded_port, guest: 80, host: 10080
  # port for Node.js service
  config.vm.network :forwarded_port, guest: 3000, host: 13000
end
