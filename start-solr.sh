#!/bin/sh

cd /solr-4.4.0/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
