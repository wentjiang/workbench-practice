#!/bin/bash
set -eufo pipefail

cd "$(dirname "$0")/.."
base_path="./resource/init/"
sql_files=$(ls $base_path)
create_database_cmd='mysql -h 127.0.0.1 -P 26100 -u root -p123456  -e "CREATE DATABASE IF NOT EXISTS minibank"'
eval "$create_database_cmd"

init_sql_file_name="init.sql"

init_table_cmd="mysql -h 127.0.0.1 -P 26100 -u root -p123456 -D minibank < ${base_path}${init_sql_file_name}"
eval "${init_table_cmd}"
