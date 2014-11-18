FROM gsnewmark/jzmq:3.1.0-4.0.5
MAINTAINER Ivan Kryvoruchko <gildraug@gmail.com>
RUN apt-get update && \
    apt-get install -y curl && \
    curl -L https://dl.bintray.com/sbt/debian/sbt-0.13.6.deb -o /opt/sbt-0.13.6.deb && \
    cd /opt && \
    ls -alF && \
    dpkg -i sbt-0.13.6.deb && \
    rm sbt-0.13.6.deb && \
    apt-get remove -y curl && \
    apt-get -y autoremove
