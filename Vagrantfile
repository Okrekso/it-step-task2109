Vagrant.configure("2") do |config|
    # define VM1
    config.vm.define "vm1" do |vm1|
      vm1.vm.hostname="oskerko-server"
      vm1.vm.box = "centos/7"
      vm1.vm.provision :shell, :path => "provision/vm1_setup.sh"
      vm1.vm.provision :shell, :path => "provision/app_vm_provision.sh", run: "always"
      vm1.vm.network "private_network", ip: "192.1l68.33.11"
      vm1.vm.network "forwarded_port", guest: 80, host: 8080, id: "vm_proxy"
    end
    # define VM2
    config.vm.define "vm2" do |vm2|
      vm2.vm.box = "ubuntu/trusty64"
      
      vm2.vm.provider "virtualbox" do |v|
        v.memory=3072
      end

      vm2.vm.network "private_network", ip: "192.168.33.22"
      vm2.vm.network "forwarded_port", guest: 8090, host: 8090, id: "vm_app"
      vm2.vm.provision :shell, :path => "provision/vm2_setup.sh"
    end
    # define VM3
    config.vm.define "vm3" do |vm3|
        vm3.vm.box = "ubuntu/trusty64"
        vm3.vm.provider "virtualbox" do |v|
          v.memory=1536
        end
        vm3.vm.network "private_network", ip: "192.168.33.33"
        vm3.vm.network "forwarded_port", guest: 3306, host: 3306, id: "vm_db"
        # installing docker
        vm3.vm.provision :shell, :path => "provision/vm3_setup.sh"
        # start docker container with wordpress db
        vm3.vm.provision :shell, :path => "provision/db_vm_provision.sh", run: "always"
      end
  end
  