FROM java:8
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV SOLR_HOME /solr-5.3.1/example/exampledocs
ENV PATH $PATH:/solr-5.3.1/bin
ADD http://archive.apache.org/dist/lucene/solr/5.3.1/solr-5.3.1.tgz /solr-5.3.1.tgz
RUN apt-get update && \
    apt-get install -y lsof && \
    tar xzvf /solr-5.3.1.tgz && \
    rm /solr-5.3.1.tgz
EXPOSE 8983
ENTRYPOINT /solr-5.3.1/bin/solr start -f
