FROM ruby:3.1.1
RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /app
WORKDIR /app

# Start the main process.
CMD ["middleman", "server", "--bind-address", "0.0.0.0"]
