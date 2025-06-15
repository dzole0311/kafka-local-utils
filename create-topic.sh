#!/bin/bash

TOPIC=${1:-test}
PARTITIONS=${2:-1}
REPLICAS=${3:-1}

docker exec -it kafka kafka-topics.sh \
  --create --bootstrap-server localhost:9092 \
  --replication-factor "$REPLICAS" \
  --partitions "$PARTITIONS" \
  --topic "$TOPIC"
