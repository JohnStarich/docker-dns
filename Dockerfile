FROM alpine:3.10

RUN apk add --no-cache \
        dnsmasq

# Running as root does not require NET_ADMIN capability
RUN echo 'user=root' >> /etc/dnsmasq.conf

ENTRYPOINT ["/usr/sbin/dnsmasq", "--no-daemon"]
