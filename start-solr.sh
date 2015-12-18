#!/bin/sh

cd /apache-solr-1.3.0/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
