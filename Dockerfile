FROM ruby:2.5.1

ENV APP_PATH /usr/src/app
WORKDIR $APP_PATH

RUN apt-get update -qq && apt-get install -y build-essential

COPY . $APP_PATH

RUN bundle install && bundle clean

EXPOSE 3000

CMD ["ruby", "server.rb", "-o", "0.0.0.0", "-p", "3000"]