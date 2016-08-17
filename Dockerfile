FROM ruby:2.1.10-slim

ENV PUPPET_VERSION 4.3.2
ENV R10K_VERSION 2.1.1
ENV PUPPETLINT_VERSION 2.0.0

RUN apt-get update && apt-get install -y git && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    gem install -v $PUPPET_VERSION puppet && \
    gem install -v $R10K_VERSION r10k && \
    gem install -v $PUPPETLINT_VERSION puppet-lint

USER 1000
VOLUME /data
WORKDIR /data
