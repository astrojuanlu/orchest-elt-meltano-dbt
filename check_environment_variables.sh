#!/usr/bin/env bash
# Linted with https://www.shellcheck.net/

if [[ ! -v GOOGLE_APPLICATION_CREDENTIALS ]]
then
  echo "Environment variable GOOGLE_APPLICATION_CREDENTIALS is not set"
  exit 1
fi
