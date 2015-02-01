FROM xdrum/openwrt:latest

MAINTAINER Alessio Cassibba (x-drum) <swapon@gmail.com>

RUN opkg update
RUN opkg install bind-server bind-tools bind-client && rm -rf /var/opkg-lists

EXPOSE 53:5353/udp

CMD ["/usr/sbin/named","-g","-c","/etc/bind/named.conf"]
