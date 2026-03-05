#!/bin/bash
# Fix ownership of the mounted volume so Kafka user (1001) can write to it
mkdir -p /var/lib/kafka/data/logs
chown -R 1001:root /var/lib/kafka/data
chmod -R g+rwX /var/lib/kafka/data

exec /opt/bitnami/scripts/kafka/entrypoint.sh /opt/bitnami/scripts/kafka/run.sh "$@"
