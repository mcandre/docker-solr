# docker-solr - a Docker container running a continuous Solr server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-solr/

# EXAMPLE

```
$ make
docker run -d -p 8983:8983 mcandre/docker-solr:5.1.0
058cb43bdee80ce214427920104052c4aa90c484cea00ae09d41b2a2f3dd58fb
docker exec 058cb43bdee80ce214427920104052c4aa90c484cea00ae09d41b2a2f3dd58fb solr create -c books

Copying configuration to new core instance directory:
/solr-5.1.0/example/exampledocs/books

Creating new core 'books' using command:
http://localhost:8983/solr/admin/cores?action=CREATE&name=books&instanceDir=books

{
  "responseHeader":{
    "status":0,
    "QTime":3068},
  "core":"books"}

curl -s "http://$(docker-machine ip default):8983/solr/books/update/?commit=true" -d @books.json -H 'Content-Type:application/json'

{"responseHeader":{"status":0,"QTime":291}}

curl "http://$(docker-machine ip default):8983/solr/books/select?q=name:*Lucene*&wt=json"

{"responseHeader":{"status":0,"QTime":97,"params":{"q":"name:*Lucene*","wt":"json"}},"response":{"numFound":1,"start":0,"docs":[{"id":"978-1933988177","cat":["book","paperback"],"name":["Lucene in Action, Second Edition"],"author":["Michael McCandless"],"sequence_i":1,"genre_s":"IT","inStock":[true],"price":[30.5],"pages_i":475,"_version_":1520662500687740928}]}}
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
