Vagrant.configure("2") do |config|
    config.vm.box = "alvistack/centos-8-stream"
    config.vm.hostname = "centos-8-stream"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = "4096"
        vb.cpus = "4"
    end

    config.vm.network "public_network",
    use_dhcp_assigned_default_route: true

    print "Please insert your username\n"
    print "Username: "
    username = STDIN.gets.chomp

    config.vm.provision "shell", path: "kickstart.sh", :args => [username]
end