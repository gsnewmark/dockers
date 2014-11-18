FROM ubuntu:14.04
MAINTAINER Ivan Kryvoruchko <gildraug@gmail.com>
RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update && \
    apt-get remove -y software-properties-common && \
    apt-get autoremove -y
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | \
    /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
