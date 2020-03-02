FROM alpine:3.11

RUN apk add --update coreutils bash && rm -rf /var/cache/apk/*

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
