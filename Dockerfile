FROM alpine:3.11.5

LABEL maintainer="Romar Cablao <romarcablao@gmail.com>"

ENV AWSCLI_VERSION "1.18.31"

RUN echo "**** install Python ****" && \
    apk add --no-cache python3 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    echo "**** install pip ****" && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi

RUN pip3 install awscli==$AWSCLI_VERSION 

RUN apk add docker

RUN aws --version && docker --version

RUN rm /var/cache/apk/*

CMD ["/bin/bash"]
