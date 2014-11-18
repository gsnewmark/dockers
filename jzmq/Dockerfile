FROM gsnewmark/oracle-java8:0.1.0
MAINTAINER Ivan Kryvoruchko <gildraug@gmail.com>
RUN apt-get update && \
    apt-get install -y build-essential make pkg-config libtool autoconf automake curl && \
    cd /opt && \
    curl http://download.zeromq.org/zeromq-4.0.5.tar.gz -o /opt/zeromq-4.0.5.tar.gz && \
    tar -zxf zeromq-4.0.5.tar.gz && \
    rm zeromq-4.0.5.tar.gz && \
    cd /opt/zeromq-4.0.5 && \
    ./configure && \
    make && \
    make install && \
    ldconfig && \
    cd /opt && \
    rm -rf zeromq-4.0.5 && \
    curl -L https://github.com/zeromq/jzmq/archive/v3.1.0.tar.gz -o /opt/jzmq-3.1.0.tar.gz && \
    tar -zxf jzmq-3.1.0.tar.gz && \
    rm jzmq-3.1.0.tar.gz && \
    cd /opt/jzmq-3.1.0 && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    ldconfig && \
    cd /opt && \
    rm -rf jzmq-3.1.0 && \
    apt-get remove -y build-essential make pkg-config libtool autoconf automake curl && \
    apt-get -y autoremove
ENV LD_LIBRARY_PATH /usr/local/lib
