FROM ruby:2.6.0

ENV APP_PATH /usr/src/app
WORKDIR $APP_PATH

RUN apt-get update -qq && apt-get install -y build-essential

COPY . $APP_PATH

RUN bundle install && bundle clean

EXPOSE 80