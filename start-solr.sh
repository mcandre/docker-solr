#!/bin/sh

cd /solr-4.7.0/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
