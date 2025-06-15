# Kafka local utils

Utility scripts I use when quickly spinning up a local Kafka setup using Docker. Runs a single-node [Bitnami Kafka](https://hub.docker.com/r/bitnami/kafka) instance (KRaft mode, no Zookeeper) and [Kafka UI](https://github.com/provectus/kafka-ui). Mostly for experimenting, testing or playing around. Without Zookeeper.

## Current utils

| Script              | Description                                   |
|---------------------|-----------------------------------------------|
| `start-kafka.sh`     | Starts a single-node Kafka       |
| `start-kafka-ui.sh`  | Starts Kafka UI dashboard on `localhost:8080` |
| `create-topic.sh`    | Creates a Kafka topic                         |
| `produce-kafka.sh`   | Produces messages to a topic (stdin)          |
| `consume-kafka.sh`   | Consumes messages from a topic                |
| `stop-kafka.sh`      | Stops/removes Kafka + Kafka UI containers     |

## Requirements

- Docker
- macOS (relies on `host.docker.internal` for Kafka UI to reach broker)

## Usage

```bash
./start-kafka.sh
./start-kafka-ui.sh
./create-topic.sh my-topic
./produce-kafka.sh my-topic
./consume-kafka.sh my-topic
