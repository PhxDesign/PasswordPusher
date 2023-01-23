#!/bin/bash
set -e

export RAILS_ENV=production
<<<<<<< HEAD
=======

echo "Password Pusher: migrating database to latest..."
bundle exec rake db:migrate
echo "Password Pusher: precompiling assets..."
bundle exec rails assets:precompile
echo "Password Pusher: starting puma webserver..."
bundle exec puma -C config/puma.rb
>>>>>>> 9ef39e89ec6a994502bcd9848cabb34899897538

echo "Password Pusher: migrating database to latest..."
bundle exec rake db:migrate
echo "Password Pusher: precompiling assets..."
bundle exec rails assets:precompile
echo "Password Pusher: starting puma webserver..."
bundle exec puma -C config/puma.rb

exec "$@"