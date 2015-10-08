#!/bin/bash
set -e
export DISPLAY=:0.0

if [ -d "$APP_HOME/todo-application" ]; then
  echo "=> Found Workshop app! changing into it"
  cd $APP_HOME/todo-application
  echo "=> Refreshing gems"
  bundle install
fi

echo "=> Executing Command in Container"
exec "$@"
