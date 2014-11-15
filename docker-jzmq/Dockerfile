FROM gsnewmark/oracle-java8:0.1.0
MAINTAINER Ivan Kryvoruchko <gildraug@gmail.com>

RUN apt-get update
RUN apt-get install -y build-essential make pkg-config libtool autoconf automake

ADD http://download.zeromq.org/zeromq-4.0.5.tar.gz /opt/
RUN cd /opt && \
    tar -zxf zeromq-4.0.5.tar.gz && \
    rm zeromq-4.0.5.tar.gz
RUN cd /opt/zeromq-4.0.5 && \
    ./configure && \
    make && \
    make install && \
    ldconfig

ADD https://github.com/zeromq/jzmq/archive/v3.1.0.tar.gz /opt/jzmq-3.1.0.tar.gz
RUN cd /opt && \
    tar -zxf jzmq-3.1.0.tar.gz && \
    rm jzmq-3.1.0.tar.gz
RUN cd /opt/jzmq-3.1.0 && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    ldconfig

ENV LD_LIBRARY_PATH /usr/local/lib

RUN apt-get -y autoremove
