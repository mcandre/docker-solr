#!/bin/sh

cd /solr-4.3.1/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
