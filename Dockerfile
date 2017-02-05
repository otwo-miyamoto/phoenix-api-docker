# Elixir https://hub.docker.com/_/elixir/
FROM elixir:1.4.1
ENV DEBIAN_FRONTEND=noninteractive

# Install apt-utils
RUN apt-get update
RUN apt-get install -y -q apt-utils

# Install hex
RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Install the Phoenix framework itself
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

# Install NodeJS 6.x and the NPM
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y -q nodejs

WORKDIR /app
ADD . /app
