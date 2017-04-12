FROM node:7-alpine

MAINTAINER Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>

# Get slack-irc
RUN npm install -g slack-irc

# Volumes
VOLUME /config.json

# Command
ENTRYPOINT ["slack-irc"]
CMD ["--config", "/config.json"]
