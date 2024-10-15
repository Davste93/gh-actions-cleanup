FROM alpine:3.13.2

# Install bash, docker-cli, jq, tmate, and necessary tools for SSH access
RUN apk add --no-cache bash docker-cli jq openssh tmate

# Copy the entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Set the entrypoint to your script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
