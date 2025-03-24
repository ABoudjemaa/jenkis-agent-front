FROM jenkins/inbound-agent  

USER root  

# Installer Node.js et npm  
RUN apk add --no-cache nodejs npm  

# Installer Jest  
RUN npm install --global jest  