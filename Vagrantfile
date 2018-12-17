# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.define "db" do |db|
    db.vm.box = "hashicorp/precise64"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "10.1.1.10", netmask: "24"
    db.vm.provision "ansible" do |ansible|
      ansible.playbook = "db.yml"
    end
  end

  config.vm.define "dns" do |dns|
    dns.vm.box = "hashicorp/precise64"
    dns.vm.hostname = "dns"
    dns.vm.network "private_network", ip: "10.1.1.20", netmask: "24"
    dns.vm.provision "ansible" do |ansible|
      ansible.playbook = "dns.yml"
    end
  end

  config.vm.define "slave" do |slave|
    slave.vm.box = "hashicorp/precise64"
    slave.vm.hostname = "slave"
    slave.vm.network "private_network", ip: "10.1.1.30", netmask: "24"
    slave.vm.provision "ansible" do |ansible|
      ansible.playbook = "slave.yml"
    end
  end

  config.vm.define "dhcp" do |dhcp|
    dhcp.vm.box = "hashicorp/precise64"
    dhcp.vm.hostname = "dhcp"
    dhcp.vm.network "private_network", ip: "10.1.1.40", netmask: "24"
    dhcp.vm.provision "ansible" do |ansible|
      ansible.playbook = "dhcp.yml"
    end
  end

  config.vm.define "client01" do |client01|
    client01.vm.box = "hashicorp/precise64"
    client01.vm.hostname = "client01"
    client01.vm.provision "ansible" do |ansible|
      ansible.playbook = "client01.yml"
    end
  end

end
