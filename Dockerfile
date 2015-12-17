FROM java:8
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV SOLR_HOME /apache-solr-4.0.0/example/exampledocs
ENV PATH $PATH:/apache-solr-4.0.0/bin
ADD start-solr.sh /start-solr.sh
ADD http://archive.apache.org/dist/lucene/solr/4.0.0/apache-solr-4.0.0.tgz /apache-solr-4.0.0.tgz
RUN apt-get update && \
    apt-get install -y lsof && \
    tar xzvf /apache-solr-4.0.0.tgz && \
    rm /apache-solr-4.0.0.tgz
EXPOSE 8983
ENTRYPOINT /start-solr.sh
