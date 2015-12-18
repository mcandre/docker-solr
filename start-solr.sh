#!/bin/sh

cd /apache-solr-3.1.0/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
