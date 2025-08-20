FROM alpine:3.20

RUN apk add --no-cache sqlite mariadb-client coreutils ca-certificates tzdata

RUN mkdir -p /data
RUN adduser -D -u 10001 app && chown -R app:app /data
USER app

ENTRYPOINT ["/bin/sh","-c","sleep infinity"]
