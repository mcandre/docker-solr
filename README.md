# docker-solr - a Docker container running a continuous Solr server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-solr/

# EXAMPLE

```
$ make
docker run -d -p 8983:8983 mcandre/docker-solr:4.9.1
058cb43bdee80ce214427920104052c4aa90c484cea00ae09d41b2a2f3dd58fb

curl "http://$(docker-machine ip default):8983/solr/admin/cores?action=STATUS&wt=json"
{"responseHeader":{"status":0,"QTime":2},"defaultCoreName":"collection1","initFailures":{},"status":{"collection1":{"name":"collection1","isDefaultCore":true,"instanceDir":"/solr-4.9.1/example/solr/collection1/","dataDir":"/solr-4.9.1/example/solr/collection1/data/","config":"solrconfig.xml","schema":"schema.xml","startTime":"2015-12-17T20:32:49.525Z","uptime":2846,"index":{"numDocs":0,"maxDoc":0,"deletedDocs":0,"indexHeapUsageBytes":0,"version":1,"segmentCount":0,"current":true,"hasDeletions":false,"directory":"org.apache.lucene.store.NRTCachingDirectory:NRTCachingDirectory(MMapDirectory@/solr-4.9.1/example/solr/collection1/data/index lockFactory=NativeFSLockFactory@/solr-4.9.1/example/solr/collection1/data/index; maxCacheMB=48.0 maxMergeSizeMB=4.0)","userData":{},"sizeInBytes":89,"size":"89 bytes"}}}}
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
