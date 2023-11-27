#!/usr/bin/with-contenv bashio
# shellcheck shell=bash

# Environment variables provided by add-on config
N8N_PORT=$(bashio::config 'n8n_port')
WEBHOOK_TUNNEL_URL=$(bashio::config 'webhook_tunnel_url')

# Set environment variables for n8n
export N8N_PORT
export WEBHOOK_TUNNEL_URL

# Start n8n
n8n start --webhook-tunnel-url ${WEBHOOK_TUNNEL_URL}
