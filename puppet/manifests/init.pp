# create a new run stages to ensure certain modules are included first, the framework after
stage { 'pre':
        before => Stage['main'];
    'post':
        require => Stage['main'];
}

# add the baseconfig module to the new 'pre' run stage
class { 'baseconfig':
        stage => 'pre';
    'zend_fw':
        stage => 'post';
}

#add zend framework to the post stage


# set defaults for file ownership/permissions
File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}

include baseconfig, apache, mysql, php, zend_fw, apache_vhosts
