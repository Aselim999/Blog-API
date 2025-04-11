FROM ruby:3.2

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client build-essential

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
