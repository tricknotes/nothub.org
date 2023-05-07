FROM ruby:3.2.2

RUN curl --location --fail --silent --show-error https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get update -qq \
  && apt-get install -y nodejs

RUN mkdir /app
WORKDIR /app

# Start the main process.
CMD ["middleman", "server", "--bind-address", "0.0.0.0"]
