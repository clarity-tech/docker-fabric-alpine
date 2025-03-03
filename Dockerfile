FROM python:2

LABEL io.claritytech.image.authors="manash@claritytech.io"

RUN python --version
# Python 2.7.18

RUN pip install 'fabric<2.0'

RUN apt-get update \
    && apt-get install -y gosu curl ca-certificates zip unzip git \
    && apt-get -y autoremove \
    && apt-get clean

# RUN apk add --no-cache curl rsync openssh && \
#     echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
#     echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
#     apk add --no-cache \
#     fabric --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# https://git.alpinelinux.org/aports/tree/testing/fabric/APKBUILD
# fabric-2.6.0.tar.gz"
# Python 3.9.7 (default, Nov 24 2021, 21:15:59) 
# [GCC 10.3.1 20211027] on linux
#  Python   | 3.9.7    |
# | Fabric   | 2.6.0    |
# | Paramiko | 2.7.2    |
# | Invoke   | 1.5.0    |
# | Paramiko Cell  | Content Cell  |

# TO ignore the CryptographyDeprecationWarning
ENV PYTHONWARNINGS="ignore"

WORKDIR /app

VOLUME /app
