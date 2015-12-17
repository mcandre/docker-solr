#!/bin/sh

cd /solr-4.7.2/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
