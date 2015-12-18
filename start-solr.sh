#!/bin/sh

cd /apache-solr-1.1.0-incubating/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
