FROM alpine:3.12

RUN \
  addgroup -g 65333 mysql-client && \
  adduser \
    -u 65333 \
    -G mysql-client \
    -h /mysql-client \
    -D \
    mysql-client && \ 
  apk add --no-cache mysql-client

WORKDIR /mysql-client

USER mysql-client

ENTRYPOINT ["mysql"]
