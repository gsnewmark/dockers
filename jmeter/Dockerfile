FROM gsnewmark/oracle-java8:0.1.0
MAINTAINER Ivan Kryvoruchko <gildraug@gmail.com>
ADD http://www.eu.apache.org/dist//jmeter/binaries/apache-jmeter-2.12.tgz /opt/
RUN cd /opt && \
    tar -zxf apache-jmeter-2.12.tgz && \
    rm apache-jmeter-2.12.tgz
WORKDIR /opt/
CMD ["/opt/apache-jmeter-2.12/bin/jmeter-server", "-Dserver.rmi.localport=1099"]
EXPOSE 1099
