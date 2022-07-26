#!/usr/bin/env bash
# Linted with https://www.shellcheck.net/

pushd meltano || exit

# Re-exporting some configs as environment variables
# to workaround file bundle meltano bug,
# see https://github.com/meltano/meltano/issues/6472
export DBT_TARGET=bigquery
export TARGET_BIGQUERY_PROJECT_ID=elt-orchest-meltano-dbt
export DBT_TARGET_SCHEMA=names_us
export TARGET_BIGQUERY_CREDENTIALS_PATH=$GOOGLE_APPLICATION_CREDENTIALS
export TARGET_BIGQUERY_LOCATION=US

meltano invoke dbt-bigquery:run
