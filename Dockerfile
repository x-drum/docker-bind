FROM alpine:3.12.0

LABEL org.opencontainers.image.authors="Alessio (x-drum) Cassibba [zerodev.it]"

RUN apk update && \
  apk add bind && \
  rm -rf /var/cache/apk/*

COPY files/named.conf /etc/bind/named.conf

EXPOSE 53:53/udp

CMD ["/usr/sbin/named","-g","-c","/etc/bind/named.conf"]
