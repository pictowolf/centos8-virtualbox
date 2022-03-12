Vagrant.configure("2") do |config|
    config.vm.box = "alvistack/centos-8-stream"
    config.vm.hostname = "centos-8-stream"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = "6400"
        vb.cpus = "4"
    end

    config.vm.network "public_network",
    use_dhcp_assigned_default_route: true

    class Username
        def to_s
            print "Virtual machine user you want created.\n"
            print "Username: " 
            STDIN.gets.chomp
        end
    end

    config.vm.provision "shell", path: "kickstart.sh", env: { "username" => Username.new }
end