#!/bin/sh

cd /apache-solr-4.0.0-BETA/example
java -DSTOP.PORT=8079 -DSTOP.KEY=stopkey -jar start.jar
