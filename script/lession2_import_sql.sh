#!/bin/bash
set -eufo pipefail

cd "$(dirname "$0")/.."
base_path="./resource/init/"
sql_files=$(ls $base_path)
create_database_cmd='mysql -h 127.0.0.1 -u root -ppassword  -e "CREATE DATABASE IF NOT EXISTS minibank_bak"'
eval "$create_database_cmd"

init_sql_file_name="init.sql"

init_table_cmd="mysql -h 127.0.0.1 -u root -ppassword -D minibank_bak < ${base_path}${init_sql_file_name}"
eval "${init_table_cmd}"

for sql_file in $sql_files; do
  if [ "$sql_file" != "${init_sql_file_name}" ]; then
    cmd="mysql -h 127.0.0.1 -u root -ppassword -D workbench < $base_path$sql_file"
    echo "$cmd"
    eval "$cmd"
  fi
done
