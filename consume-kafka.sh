#!/bin/bash

TOPIC=${1:-test}
GROUP=${2:-cli-group}

echo "Consuming from topic '$TOPIC' with group '$GROUP'..."
docker exec -it kafka kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic "$TOPIC" \
  --group "$GROUP" \
  --from-beginning
