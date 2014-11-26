#!/bin/bash

if [ "$RABBITMQ_CLUSTER_COOKIE" != "" ]; then
    echo -n "$RABBITMQ_CLUSTER_COOKIE" > /var/lib/rabbitmq/.erlang.cookie
    chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie
    chmod 600 /var/lib/rabbitmq/.erlang.cookie
fi

chown -R rabbitmq:rabbitmq /data/mnesia
chown -R rabbitmq:rabbitmq /data/log

if [ "$RABBITMQ_CLUSTER_CONNECT_TO" = "" ]; then
    exec /usr/sbin/rabbitmq-server "$@"
else
    LOG_FILE=/data/log/${hostname}-nohup.log
    nohup /usr/sbin/rabbitmq-server "$@" > $LOG_FILE &
    sleep 20
    rabbitmqctl stop_app
    if [ "$RABBITMQ_CLUSTER_RAM_NODE" = "true" ]; then
        rabbitmqctl join_cluster --ram $RABBITMQ_CLUSTER_CONNECT_TO
    else
        rabbitmqctl join_cluster --disk $RABBITMQ_CLUSTER_CONNECT_TO
    fi
    rabbitmqctl start_app
    tail -n +1 -f $LOG_FILE
fi
