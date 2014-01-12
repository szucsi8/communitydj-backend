box  = 'precise32'
url  = 'http://files.vagrantup.com/precise32.box'
port = 8080

Vagrant::Config.run do |config|
  config.vm.box = box
  config.vm.box_url = url
  config.vm.forward_port 80, port
  
  config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "puppet/manifests"
     puppet.manifest_file = "init.pp"
     puppet.module_path = 'puppet/modules'
  end
end
