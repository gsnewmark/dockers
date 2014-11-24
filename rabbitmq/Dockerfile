FROM dockerfile/rabbitmq
MAINTAINER Ivan Kryvoruchko <gildraug@gmail.com>
COPY start.sh /opt/start.sh
ENV RABBITMQ_USE_LONGNAME true
RUN sed -i --follow-symlinks 's/\${RABBITMQ_NAME_TYPE} rabbitmqprelaunch\$\$ \\/-sname rabbitmqprelaunch\$\$ \\/' /usr/lib/rabbitmq/bin/rabbitmq-server
CMD ["/opt/start.sh"]
