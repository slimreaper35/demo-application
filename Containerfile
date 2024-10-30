FROM docker.io/library/ruby:latest

COPY Gemfile .
COPY Gemfile.lock .
COPY tmp.gemspec .

COPY . .

RUN . /tmp/cachi2.env && bundle config list
RUN . /tmp/cachi2.env && bundle install
RUN . /tmp/cachi2.env && bundle list
