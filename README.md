# docker-solr - a Docker container running a continuous Solr server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-solr/

# EXAMPLE

```
$ make
docker run -d -p 8983:8983 mcandre/docker-solr:1.1.0-incubating
058cb43bdee80ce214427920104052c4aa90c484cea00ae09d41b2a2f3dd58fb

curl "http://$(docker-machine ip default):8983/solr/"
<HTML><HEAD><TITLE>Directory: /solr/</TITLE></HEAD><BODY>
<H1>Directory: /solr/</H1><TABLE BORDER=0><TR><TD><A HREF="/solr/META-INF/">META-INF/&nbsp;</TD><TD ALIGN=right>4096 bytes&nbsp;</TD><TD>Dec 18, 2015 4:47:09 PM</TD></TR>
<TR><TD><A HREF="/solr/WEB-INF/">WEB-INF/&nbsp;</TD><TD ALIGN=right>4096 bytes&nbsp;</TD><TD>Dec 18, 2015 4:47:09 PM</TD></TR>
<TR><TD><A HREF="/solr/admin/">admin/&nbsp;</TD><TD ALIGN=right>4096 bytes&nbsp;</TD><TD>Dec 18, 2015 4:47:09 PM</TD></TR>
</TABLE>
</BODY></HTML>
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
