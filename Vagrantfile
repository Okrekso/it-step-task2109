Vagrant.configure("2") do |config|
    # define VM1
    config.vm.define "VM1 'proxy'" do |vm1|
      vm1.vm.box = "centos/7"
      vm1.vm.network "forwarded_port", guest: 80, host: 6060, host_ip: "127.0.0.1", id: "proxy"
    end
    # define VM2
    config.vm.define "VM2 'app'" do |vm2|
      vm2.vm.box = "ubuntu/trusty64"
      vm2.vm.network "forwarded_port", guest: 80, host: 7070, host_ip: "127.0.0.1", id: "app"
    end
    # define VM3
    config.vm.define "VM3 'db'" do |vm3|
        vm3.vm.box = "ubuntu/trusty64"
        vm3.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1", id: "db"
      end
  
    # installing nginx
    # config.vm.provision :shell, :path => ".provision/provision.sh", run: "always"
  end
  