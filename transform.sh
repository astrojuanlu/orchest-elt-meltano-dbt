#!/usr/bin/env bash
# Linted with https://www.shellcheck.net/

pushd meltano || exit

meltano invoke dbt-bigquery:run
