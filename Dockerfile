FROM alpine:3

LABEL io.claritytech.image.authors="manash@claritytech.io"


RUN apk add --no-cache curl rsync openssh && \
    echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk add --no-cache \
    fabric --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# https://git.alpinelinux.org/aports/tree/testing/fabric/APKBUILD
# fabric-2.6.0.tar.gz"
# Python 3.9.7 (default, Nov 24 2021, 21:15:59) 
# [GCC 10.3.1 20211027] on linux
#  Python   | 3.9.7    |
# | Fabric   | 2.6.0    |
# | Paramiko | 2.7.2    |
# | Invoke   | 1.5.0    |
# | Paramiko Cell  | Content Cell  |
WORKDIR /app

VOLUME /app
