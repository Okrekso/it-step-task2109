Vagrant.configure("2") do |config|
    # define VM1
    config.vm.define "VM1 'proxy'" do |vm1|
      vm1.vm.box = "centos/7"
      vm1.vm.network "forwarded_port", guest: 80, host: 6060, host_ip: "127.0.0.1", id: "vm_proxy"
    end
    # define VM2
    config.vm.define "VM2 'app'" do |vm2|
      vm2.vm.box = "ubuntu/trusty64"
      vm2.vm.network "forwarded_port", guest: 80, host: 7070, host_ip: "127.0.0.1", id: "vm_app"
    end
    # define VM3
    config.vm.define "VM3 'db'" do |vm3|
        vm3.vm.box = "ubuntu/trusty64"
        vm3.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1", id: "vm_db"
  
        # installing docker
        vm3.vm.provision :shell, :path => "provision/vm3_setup.sh"
        # start docker container with wordpress db
        vm3.vm.provision :shell, :path => "provision/db_vm_provision.sh", run: "always"
      end
  end
  