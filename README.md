Vagrant SetUp
-------------

Type `vagrant up` at the terminal to start up vagrant

To Login to vagrant box `vagrant ssh`

The contents of the directory, where `Vagrantfile` is located, can be found at `/home/vagrant/elasticsearch`.
This directory will be kept in sync with changes with your `repo directory`, so any changes made in the `host` machine will be reflected in this folder on the `guest` machine.

To run Elasticsearch in the vagrant box, type `sudo /etc/init.d/elasticsearch start`.

Test your setup by navigating [here](http://localhost:9220/?pretty) where you should get something like this
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

Note the port number being used is **9220**
