FROM buildpack-deps:bionic

# MAINTAINER Aidan Coyne <coynea90@gmail.com>
MAINTAINER elias garcia <elias.jm.garcia@gmail.com>

ENV ZOLA_VERSION v0.11.0

#todo: AWS utilities

RUN apt update -y && apt install -y wget tar python3 python3-dev python3-pip && \
    pip3 install awscli 

RUN wget https://github.com/getzola/zola/releases/download/${ZOLA_VERSION}/zola-${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz -O zola.tar.gz && \
    mkdir -p /opt/zola-${ZOLA_VERSION} && \
    tar -xzf zola.tar.gz -C /opt/zola-${ZOLA_VERSION}/ && \
    rm zola.tar.gz

ENV PATH $PATH:/opt/zola-${ZOLA_VERSION}
