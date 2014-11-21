# rabbitmq

A Docker image with RabbitMQ ready to be used in clustered mode.

## Usage

A couple of environment variables is used to add a node to the cluster:

- `RABBITMQ_CLUSTER_COOKIE` specifies Erlang cookie used by a node (must be
  same on all cluster's nodes)

- `RABBITMQ_CLUSTER_CONNECT_TO` if it's defined node will try to connect to
  the cluster with specified name (for example, `rabbit@rabbitmq`)

- `RABBITMQ_CLUSTER_RAM_NODE` if set to true node would be added to cluster as
  a RAM node (otherwise it would be added as a disk node)
