FROM java:8
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV SOLR_HOME /solr-4.10.4/example/exampledocs
ENV PATH $PATH:/solr-4.10.4/bin
ADD http://archive.apache.org/dist/lucene/solr/4.10.4/solr-4.10.4.tgz /solr-4.10.4.tgz
RUN apt-get update && \
    apt-get install -y lsof && \
    tar xzvf /solr-4.10.4.tgz && \
    rm /solr-4.10.4.tgz
EXPOSE 8983
ENTRYPOINT /solr-4.10.4/bin/solr start -f
