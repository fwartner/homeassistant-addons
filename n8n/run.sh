#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

HTTP_PORT=$(jq --raw-output ".http_port" $CONFIG_PATH)
CREDENTIAL_KEY=$(jq --raw-output ".credential_key" $CONFIG_PATH)

# Start n8n with specified HTTP port and credential key
n8n start --webhook-url="http://${CREDENTIAL_KEY}:5678/" --port $HTTP_PORT
