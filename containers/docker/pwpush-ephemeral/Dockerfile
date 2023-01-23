# pwpush-ephemeral
<<<<<<< HEAD
FROM ruby:3.0.4-slim-bullseye
=======
FROM ruby:3.2-slim
>>>>>>> 9ef39e89ec6a994502bcd9848cabb34899897538

LABEL authors="jlgauthier@phoenixdesign.cloud"

# Create a user and group to run the application
ARG UID=1000
ARG GID=1000

RUN groupadd -g "${GID}" pwpusher \
  && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" pwpusher

ENV APP_ROOT=/opt/PasswordPusher
ENV PATH=${APP_ROOT}:${PATH} HOME=${APP_ROOT}

# For the latest yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Required packages
RUN apt-get update -qq && \
    apt-get install -qq -y --assume-yes build-essential apt-utils libpq-dev git curl tzdata libsqlite3-0 libsqlite3-dev zlib1g-dev nodejs yarn

<<<<<<< HEAD
# For the latest yarn
# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
# RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# RUN apt-get update && apt-get install yarn -y
# RUN yarn install
=======
RUN mkdir -p ${APP_ROOT} && chown -R pwpusher:pwpusher ${APP_ROOT}
COPY --chown=pwpusher:pwpusher ./ ${APP_ROOT}/
USER pwpusher
>>>>>>> 9ef39e89ec6a994502bcd9848cabb34899897538

EXPOSE 5100

RUN gem install bundler
# RUN bundle config --global frozen 1

RUN mkdir -p ${APP_ROOT}
WORKDIR ${APP_ROOT}
ADD ./ ${APP_ROOT}/
RUN npm install yarn

ENV RACK_ENV=private
ENV RAILS_ENV=private

RUN bundle config set without 'development production test'
RUN bundle config set deployment 'true'

RUN bundle install
<<<<<<< HEAD
RUN bundle exec rails webpacker:compile
=======
RUN yarn install
RUN bundle exec rails assets:precompile
>>>>>>> 9ef39e89ec6a994502bcd9848cabb34899897538
RUN bundle exec rake db:setup

ENTRYPOINT ["containers/docker/pwpush-ephemeral/entrypoint.sh"]
