FROM alpine:3.13

RUN apk add --no-cache mysql-client

ARG PUID=1000
ARG PGID=1000

RUN \
  addgroup -g "${PGID}" mysql-client && \
  adduser \
    -u "${PUID}" \
    -G mysql-client \
    -h /mysql-client \
    -D \
    mysql-client

WORKDIR /mysql-client

USER mysql-client

ENTRYPOINT ["mysql"]
