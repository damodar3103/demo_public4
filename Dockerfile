FROM alpine:latest

# Install BusyBox HTTPD server
RUN apk add --no-cache busybox-extras

# Create directory for web content
RUN mkdir -p /www

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/bin/sh", "-c", "/entrypoint.sh"]
