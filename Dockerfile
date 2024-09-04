
FROM ruby:3.0.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec sidekiq & bundle exec rails server -b '0.0.0.0'"]
