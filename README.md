# docker-solr - a Docker container running a continuous Solr server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-solr/

# EXAMPLE

```
$ make
docker run -d -p 8983:8983 mcandre/docker-solr:3.5.0
058cb43bdee80ce214427920104052c4aa90c484cea00ae09d41b2a2f3dd58fb

curl "http://$(docker-machine ip default):8983/solr/admin/cores?action=STATUS&wt=json"
{"responseHeader":{"status":0,"QTime":13},"status":{"":{"name":"","instanceDir":"solr/./","dataDir":"solr/./data/","startTime":"2015-12-18T15:52:11.337Z","uptime":5160,"index":{"numDocs":0,"maxDoc":0,"version":1450453931388,"segmentCount":0,"current":true,"hasDeletions":false,"directory":"org.apache.lucene.store.MMapDirectory:org.apache.lucene.store.MMapDirectory@/apache-solr-3.5.0/example/solr/data/index lockFactory=org.apache.lucene.store.NativeFSLockFactory@2426791a","lastModified":"2015-12-18T15:52:11Z"}}}}docker-solr (3.5.0)
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
