FROM java:8
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV SOLR_HOME /solr-4.8.0/example/exampledocs
ENV PATH $PATH:/solr-4.8.0/bin
ADD start-solr.sh /start-solr.sh
ADD http://archive.apache.org/dist/lucene/solr/4.8.0/solr-4.8.0.tgz /solr-4.8.0.tgz
RUN apt-get update && \
    apt-get install -y lsof && \
    tar xzvf /solr-4.8.0.tgz && \
    rm /solr-4.8.0.tgz
EXPOSE 8983
ENTRYPOINT /start-solr.sh
