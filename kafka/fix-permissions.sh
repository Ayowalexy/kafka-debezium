#!/bin/bash
# Fix permissions on the mounted volume so Kafka can write to it
mkdir -p /var/lib/kafka/data/logs
chmod -R 777 /var/lib/kafka/data

# Remove stale meta.properties to prevent cluster ID mismatch with ZooKeeper
# This can happen on Railway when one service volume is reset but the other is not
find /var/lib/kafka/data/logs -name "meta.properties" -delete

exec /opt/bitnami/scripts/kafka/entrypoint.sh /opt/bitnami/scripts/kafka/run.sh "$@"
