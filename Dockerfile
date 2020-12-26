FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle update --bundler
RUN bundle install
COPY . /app

# Start the main process.
CMD ["middleman", "server", "--bind-address", "0.0.0.0"]
