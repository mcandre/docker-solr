FROM java:8
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV SOLR_HOME /solr-5.4.0/example/exampledocs
ENV PATH $PATH:/solr-5.4.0/bin
ADD http://archive.apache.org/dist/lucene/solr/5.4.0/solr-5.4.0.tgz /solr-5.4.0.tgz
RUN apt-get update && \
    apt-get install -y lsof && \
    tar xzvf /solr-5.4.0.tgz && \
    rm /solr-5.4.0.tgz
EXPOSE 8983
ENTRYPOINT /solr-5.4.0/bin/solr start -f
