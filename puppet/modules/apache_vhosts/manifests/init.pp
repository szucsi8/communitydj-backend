# == Class: apache_vhosts
#
# Adds and enables virtual hosts. Sets up /vagrant/zend/public symlinks.
#
class apache_vhosts {
  file { '/vagrant/zend/public':
    ensure => directory;
  }

  apache_vhosts::vhost { ['zend']: }
}
