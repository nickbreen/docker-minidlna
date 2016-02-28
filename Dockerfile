FROM phusion/baseimage:0.9.18

MAINTAINER Nick Breen <nick@foobar.net.nz>

RUN apt-get -qq update && apt-get install -qyy lvm2

COPY minidlna-1.1.5_static.tar.gz /tmp/

# This installs to /etc and /usr!
RUN tar zxf /tmp/minidlna-1.1.5_static.tar.gz && rm /tmp/minidlna-1.1.5_static.tar.gz

COPY etc/* /etc/
