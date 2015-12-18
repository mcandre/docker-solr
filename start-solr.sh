#!/bin/sh

cd /apache-solr-1.4.0/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
