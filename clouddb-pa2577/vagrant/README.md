# Create a new Vagrant VM

1. Create and enter a new directory
2. Run `vagrant init bento/ubuntu-18.04` to create a new configuration
    * This will create a stub `Vagrantfile` which contains the configuration for your virtual box
3. Start the VM with `vagrant up` and log in to it with `vagrant ssh`
    * Note that `/vagrant` is the same as your starting directory on your host computer
4. Exit the Vagrant VM with `exit`
5. Clean up: `vagrant destroy -f`