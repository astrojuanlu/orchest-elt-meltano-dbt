# ELT pipeline in Orchest with meltano and dbt

[![Open in Orchest](https://github.com/orchest/orchest-examples/raw/main/imgs/open_in_orchest.svg)](https://cloud.orchest.io/?import_url=https://github.com/astrojuanlu/orchest-elt-meltano-dbt/)

Creating an ELT pipeline in Orchest that extracts data from PostgreSQL and loads it to BigQuery
using meltano and dbt.

![Pipeline visualization](https://pviz.orchest.io/?pipeline=https://github.com/astrojuanlu/orchest-elt-meltano-dbt/blob/main/main.orchest)

## Init commands

These commands were used to create the configuration file,
using the Jupyter Console. There is no need to run them again.

```
! meltano init meltano
% cd meltano
! meltano add extractor tap-postgres
! meltano add loader target-bigquery
! meltano config tap-postgres set user postgres
! meltano config tap-postgres set dbname postgres
! meltano config tap-postgres set password ''
! meltano select tap-postgres '*' '*'
! meltano config tap-postgres set _metadata '*' replication-method FULL_TABLE
! meltano add transformer dbt-bigquery
```
