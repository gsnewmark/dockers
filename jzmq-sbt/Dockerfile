FROM gsnewmark/jzmq:3.1.0-4.0.5
MAINTAINER Ivan Kryvoruchko <gildraug@gmail.com>
ADD https://dl.bintray.com/sbt/debian/sbt-0.13.6.deb /opt/
RUN cd /opt && \
    dpkg -i sbt-0.13.6.deb && \
    rm sbt-0.13.6.deb
