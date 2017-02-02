FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.4.3

RUN gem install cloudstack_client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cloudstack_client"]
CMD ["--help"]
