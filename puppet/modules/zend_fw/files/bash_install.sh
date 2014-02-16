# install git if not installed
sudo apt-get -y install git

# go to the base directory
cd /vagrant

# clone the framework
git clone git://github.com/zendframework/ZendSkeletonApplication.git Zend

# install with composer
/vagrant/Zend/composer.phar install