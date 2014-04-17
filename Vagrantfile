# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "chef/fedora20"

  # Where to fetch the box from 
  config.vm.box_url = "https://vagrantcloud.com/chef/fedora-20/version/1/provider/virtualbox.box"  
  # Set up port forwarding localhost:8080 -> guest:80 
  config.vm.network :forwarded_port, guest: 80, host: 8080

  # Enable provisioning with SSH to bootstrap the core install on the machine
  # This will install what is required for Chef
  config.vm.provision :shell, :path => "./boot/bootstrap.sh" 

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  #config.vm.provision :chef_solo do |chef|
  #  chef.cookbooks_path = "./my-recipes/cookbooks"
  #  chef.roles_path = "./my-recipes/roles"
  #  chef.data_bags_path = "./my-recipes/data_bags"
  #  chef.add_recipe "hellowworld"
  #end

end
