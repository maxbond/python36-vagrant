# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest:80, host: 8080, auto_correct: true
  config.vm.network "forwarded_port", guest:8000, host: 8000, auto_correct: true
  config.vm.provider :virtualbox do |p|
    p.customize ["modifyvm", :id, "--memory", 2048]
    p.customize ["modifyvm", :id, "--cpus", 2]
    p.customize ["modifyvm", :id, "--cpuexecutioncap", 50]
  end
  config.vm.synced_folder "./src", "/home/vagrant/src", id: "vagrant-root", :mount_options => ["dmode=777","fmode=777"]
  config.vm.provision "shell", path: "bootstrap.sh"
end
