Vagrant SetUp
-------------

Type `vagrant up` at the terminal to start up vagrant

To Login to vagrant box `vagrant ssh`

The contents of the directory, where `Vagrantfile` is located, can be found at `/home/vagrant/elasticsearch`.
This directory will be kept in sync with changes with your `repo directory`, so any changes made in the `host` machine will be reflected in this folder on the `guest` machine.

To run Elasticsearch in the vagrant box, type `sudo /etc/init.d/elasticsearch start`.


