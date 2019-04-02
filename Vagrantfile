# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.define "db" do |db|
    db.vm.box = "centos/7"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.122.2" netmask: "24"
    db.vm.provision "ansible" do |ansible|
      ansible.playbook = "db.yml"
    end
  end

  config.vm.define "dns" do |dns|
    dns.vm.box = "centos/7"
    dns.vm.hostname = "dns"
    dns.vm.network "private_network", ip: "192.168.122.3" netmask: "24"
    dns.vm.provision "ansible" do |ansible|
      ansible.playbook = "dns.yml"
    end
  end

  config.vm.define "slave" do |slave|
    slave.vm.box = "centos/7"
    slave.vm.hostname = "slave"
    slave.vm.network "private_network", ip: "192.168.122.4", netmask: "24"
    slave.vm.provision "ansible" do |ansible|
      ansible.playbook = "slave.yml"
    end
  end

  config.vm.define "dhcp" do |dhcp|
    dhcp.vm.box = "centos/7"
    dhcp.vm.hostname = "dhcp"
    dhcp.vm.network "private_network", ip: "192.168.121.5" netmask: "24"
    dhcp.vm.provision "ansible" do |ansible|
      ansible.playbook = "dhcp.yml"
    end
  end

  config.vm.define "client01" do |client01|
    client01.vm.box = "centos/7"
    client01.vm.hostname = "client01"
    client01.vm.provision "ansible" do |ansible|
      ansible.playbook = "client01.yml"
    end
  end

end
