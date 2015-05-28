# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-reload")
  system('vagrant plugin install vagrant-reload')
  puts 'Vagrant Reload plugin installed, run the command again'
  exit
end

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "hansode/centos-5.7-i386"
  config.vm.network :forwarded_port, host: 8080, guest: 80
  config.vm.synced_folder "/media/dev_desenvolvedores/110/", "/srv/vm206", :create => true

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "512"
  end
  config.vm.provision "shell", path: "bash/disable-selinux.sh"
  config.vm.provision :reload
  config.vm.provision "shell", path: "bash/yum-packages.sh"
  config.vm.provision "shell", path: "bash/dependencies.sh"
  config.vm.provision "shell", path: "bash/yum-folha-repositories.sh"
  config.vm.provision "shell", path: "bash/setup-oracle-instantclient.sh"
  # config.vm.provision "shell", path: "bash/setup-elasticsearch.sh"
  config.vm.provision "shell", path: "bash/setup-freetds.sh"
  config.vm.provision "shell", path: "bash/setup-apache.sh"
  config.vm.provision "shell", path: "bash/setup-php.sh"
  config.vm.provision "shell", path: "bash/server-configuration.sh"
  config.vm.provision "shell", path: "bash/setup-guest-vm-after-kernel-update.sh"
end
