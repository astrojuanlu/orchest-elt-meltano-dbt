# ELT pipeline in Orchest with meltano and dbt

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
