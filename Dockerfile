FROM phusion/baseimage:0.9.18

MAINTAINER Nick Breen <nick@foobar.net.nz>

COPY minidlna-1.1.5_static.tar.gz /tmp/

# This installs to /etc and /usr!
RUN tar zxf /tmp/minidlna-1.1.5_static.tar.gz && rm /tmp/minidlna-1.1.5_static.tar.gz

COPY etc /etc/

VOLUME /var/cache/minidlna /var/lib/minidlna
