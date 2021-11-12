FROM ruby:2.7.1-alpine

ARG GROK_ROOT=/Grokking_algorithms
ARG PACKAGES="vim git bash"

RUN apk update \
    && apk upgrade \
    && apk add --update --no-cache $PACKAGES

RUN gem install bundler:2.1.4

RUN mkdir $GROK_ROOT
ADD . $GROK_ROOT
WORKDIR $GROK_ROOT

CMD bash