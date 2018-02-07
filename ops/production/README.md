Production script
================
The script `install.sh`  should allow you to create by just
executing it, install Elastic Search, Logstash, Kivana, and Logtrail plugin.

Please note that this script **needs** the
`../ensure_kivana_configuration` to work, this should be fixed in future.


## Test it
You can test it opening a docker

~~~
$ docker run --rm --name erlang_log_kibana -p "9200:9200" -p "5601:5601" -p "9125:9125/udp" -it openjdk
~~~

Then in other terminal

~~~
$ cd <ops directory of this repo>
$ docker cp . erlang_log_kibana:/home/erlang
~~~

Finally in the docker machine:

~~~
$ cd /home/erlang/production
$ sh install.sh
~~~
