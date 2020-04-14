RUN echo "Oh dang look at that!!!: $node_version"
FROM node:$node_version

RUN apk update && \
    apk upgrade && \
    apk add git openssh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
