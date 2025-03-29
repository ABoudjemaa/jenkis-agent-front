FROM jenkins/inbound-agent  

USER root  

# Check if the base image is Alpine or Debian and install Node.js accordingly
RUN if [ -f /etc/alpine-release ]; then \
        apk add --no-cache nodejs npm; \
    else \
        apt-get update && apt-get install -y nodejs npm; \
    fi

# Install Jest globally
RUN npm install --global jest

# Verify installations
RUN node -v && npm -v && jest --version
