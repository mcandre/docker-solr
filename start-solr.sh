#!/bin/sh

cd /solr-4.5.1/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
