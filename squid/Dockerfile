FROM alpine:latest

RUN apk --no-cache add squid && \
    mkdir -p /var/spool/squid && \
    chown squid /var/spool/squid && \
    touch /var/run/squid.pid && \
    chown squid /var/run/squid.pid

COPY ["squid.conf", "urlRewrite.sh", "urlRewrite.conf", "/etc/squid/"]

EXPOSE 3128
USER squid

ENTRYPOINT ["/usr/sbin/squid"]
CMD ["-N", "-d", "5", "-f", "/etc/squid/squid.conf"]
