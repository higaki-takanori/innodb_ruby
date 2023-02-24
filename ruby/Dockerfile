FROM ruby:3.0

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

WORKDIR /myapp

COPY Gemfile ./
RUN bundle install

COPY . .