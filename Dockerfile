FROM alpine:3.11

RUN apk add --no-cache bash

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
