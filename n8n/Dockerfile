FROM n8nio/n8n
LABEL maintainer="Florian Wartner <florian@wartner.io>"

# Environment variables for configuration
ENV N8N_PORT 5678
ENV WEBHOOK_TUNNEL_URL ""
ENV GENERIC_TIMEZONE "UTC"

# Expose web interface port
EXPOSE ${N8N_PORT}

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]
