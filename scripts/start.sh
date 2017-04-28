#! /bin/bash

current_environment="$RUN_ENV"

env_file="config/env/dev.env"

if [ ! -f "$env_file" ];
then
  echo "Please, setup the environment variables"
  exit 1
fi  

source $env_file

# DEBUG=http,express:* nodemon app.js
node app.js
echo
echo "For security reasons we can't deploy our POLIS_API_KEY";
echo "Please, create script to export POLIS_API_KEY at config/polis-api/polis.env";
echo
echo "Example:"
echo "export POLIS_API_KEY= your-key-here"
echo "export POLIS_AUTH_HASH= your-basic-auth-hash"
echo
