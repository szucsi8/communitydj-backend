class zend_fw {
    exec { 'install-zend':
      command =>"/bin/bash /vagrant/puppet/modules/zend_fw/files/bash_install.sh",
      returns => 1,
    }
}

