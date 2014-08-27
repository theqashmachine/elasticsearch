Vagrant SetUp
-------------

Ensure you have the following installed before continuing:
 * VirtualBox
 * [Vagrant](https://www.vagrantup.com/)


Type `vagrant up` at the terminal to start up a vagrant instance.

To *destroy* the vagrant instance, type `vagrant destroy -f`.
You can always quickly set another instance by typing `vagrant up` ;-)

To Login to the vagrant box type `vagrant ssh` at the terminal.

The contents of the directory, where `Vagrantfile` is located, can be found at `/vagrant/elasticsearch`.

This directory will be kept in sync with changes with your `repo directory`, so any changes made in the `host` machine will be reflected in this folder on the `guest` machine.

After vagrant is set up, elasticsearch will be running as a service on the vagrant box reading the config files in the `config/elasticsearch` folder.

*Any changes made to these files will be reflected in the running elasticsearch instance on the vagrant box*

Test your setup by navigating [here](http://localhost:9220/?pretty) in a browser on the **host** machine where you should get something like this
```
{
  "status" : 200,
  "name" : "Qash Machine",
  "version" : {
    "number" : "1.3.2",
    "build_hash" : "dee175dbe2f254f3f26992f5d7591939aaefd12f",
    "build_timestamp" : "2014-08-13T14:29:30Z",
    "build_snapshot" : false,
    "lucene_version" : "4.9"
  },
  "tagline" : "You Know, for Search"
}
```

Note the port number being used is **9220** which directs all requests to the elasticsearch instance running on the vagrant box.

ElasticSearch Config
--------------------

Elasticsearch config files are located in the `config/elasticsearch` folder.
Any changes made here are reflected in the vagrant box automatically.
