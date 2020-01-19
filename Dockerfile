FROM alpine:3.11

RUN addgroup \
  -g 65333 mysql-client && \
  adduser \
  -u 65333 \
  -S -D -H -h /mysql-client \
  -g mysql-client \
  -G mysql-client mysql-client && \ 
  apk add --no-cache mysql-client

WORKDIR /mysql-client

USER mysql-client

ENTRYPOINT ["mysql"]
