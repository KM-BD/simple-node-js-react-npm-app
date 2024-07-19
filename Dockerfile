FROM jenkins/jenkins

# Install curl
USER root
RUN apt-get update && \
    apt-get install -y curl

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - && \
    apt-get install -y nodejs

# Install npm
RUN curl -L https://www.npmjs.com/install.sh | sh

# Switch back to jenkins user
USER jenkins
