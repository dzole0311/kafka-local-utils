#!/bin/bash

TOPIC=${1:-test}

echo "Producing to topic '$TOPIC' (Ctrl+D to stop)..."
docker exec -i kafka kafka-console-producer.sh \
  --broker-list localhost:9092 \
  --topic "$TOPIC"
