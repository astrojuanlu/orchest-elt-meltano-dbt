#!/usr/bin/env bash
# Linted with https://www.shellcheck.net/

pushd meltano || exit

meltano run tap-postgres target-bigquery
