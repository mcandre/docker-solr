FROM java:8
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV SOLR_HOME /apache-solr-1.4.1/example/exampledocs
ENV PATH $PATH:/apache-solr-1.4.1/bin
ADD start-solr.sh /start-solr.sh
ADD http://archive.apache.org/dist/lucene/solr/1.4.1/apache-solr-1.4.1.tgz /apache-solr-1.4.1.tgz
RUN apt-get update && \
    apt-get install -y lsof && \
    tar xzvf /apache-solr-1.4.1.tgz && \
    rm /apache-solr-1.4.1.tgz
EXPOSE 8983
ENTRYPOINT /start-solr.sh
