#!/bin/sh

cd /apache-solr-3.6.2/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
