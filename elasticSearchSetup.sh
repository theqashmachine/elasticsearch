#!/bin/bash
wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -

echo 'deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main' >> /etc/apt/sources.list

apt-get update

apt-get install elasticsearch -y

echo 'Elastic Search set up complete'
