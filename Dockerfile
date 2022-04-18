FROM alpine:3.15.4

LABEL maintainer="kefi550"

RUN apk --update --no-cache add hostapd

CMD ["hostapd", "/hostapd.conf"]
