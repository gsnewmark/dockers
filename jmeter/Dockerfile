FROM gsnewmark/oracle-java8:0.1.0
MAINTAINER Ivan Kryvoruchko <gildraug@gmail.com>
RUN apt-get update && \
    apt-get install -y curl && \
    curl http://www.eu.apache.org/dist//jmeter/binaries/apache-jmeter-2.12.tgz -o /opt/apache-jmeter-2.12.tgz
    cd /opt && \
    tar -zxf apache-jmeter-2.12.tgz && \
    rm apache-jmeter-2.12.tgz && \
    apt-get remove -y curl && \
    apt-get -y autoremove
WORKDIR /opt/
CMD ["/opt/apache-jmeter-2.12/bin/jmeter-server", "-Dserver.rmi.localport=1099"]
EXPOSE 1099
