#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
  \set polis_user `echo $USER_PG`
  \set polis_db `echo $DB_PG`
  \set polis_password `echo $PASSWORD_PG`

  CREATE USER :polis_user WITH CREATEDB PASSWORD ':polis_password';
  CREATE DATABASE :polis_db;
  GRANT ALL PRIVILEGES ON DATABASE :polis_db TO :polis_user;
EOSQL

export `cat /polisServer/env/postgres.env`

psql < /polisServer/postgres/db_setup_draft.sql
psql < /polisServer/postgres/db_setup_draft.sql
psql < /polisServer/postgres/db_setup_draft.sql
