#!/bin/bash
wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -

echo 'deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main' >> /etc/apt/sources.list

apt-get update

apt-get install elasticsearch -y

cp -fv /vagrant/config/elasticsearch.cfg /etc/default/elasticsearch

# set elasticsearch to run on start up
update-rc.d elasticsearch defaults 95 10

# Start elasticsearch
/etc/init.d/elasticsearch start

echo 'Elastic Search set up complete'

echo 'Verify setup by navigating to http://localhost:9220/?pretty'
