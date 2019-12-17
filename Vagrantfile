Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"
    # define VM1
    config.vm.define "VM1 'proxy'" do |m1_config|
      m1_config.vm.network "forwarded_port", guest: 80, host: 6060, host_ip: "127.0.0.1", id: "nginx"
    end
    # define VM2
    config.vm.define "VM2 'app'" do |m2_config|
      m2_config.vm.network "forwarded_port", guest: 80, host: 7070, host_ip: "127.0.0.1", id: "second"
    end
    # define VM3
    config.vm.define "VM3 'db'" do |m2_config|
        m2_config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1", id: "second"
      end
  
    # installing nginx
    # config.vm.provision :shell, :path => ".provision/provision.sh", run: "always"
  end
  