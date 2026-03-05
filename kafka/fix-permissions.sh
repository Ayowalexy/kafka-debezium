#!/bin/bash
# Fix permissions on the mounted volume so Kafka can write to it
mkdir -p /var/lib/kafka/data/logs
chmod -R 777 /var/lib/kafka/data

exec /opt/bitnami/scripts/kafka/entrypoint.sh /opt/bitnami/scripts/kafka/run.sh "$@"
