FROM ruby:2.7.1

# Install system dependencies
RUN apt-get update -qq && apt-get install -y postgresql-client

# Set up the working directory
WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the application code
COPY . .

ENTRYPOINT ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
