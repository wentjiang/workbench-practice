#!/bin/bash
set -eufo pipefail

cd "$(dirname "$0")/.."
base_path="./resource/init/"
sql_files=$(ls $base_path)
create_database_cmd='mysql -h 127.0.0.1 -P 26100 -u root -p123456  -e "CREATE DATABASE IF NOT EXISTS minibank"'
eval "$create_database_cmd"

for sql_file in $sql_files; do
  if [ "$sql_file" != "${init_sql_file_name}" ]; then
    cmd="mysql -h 127.0.0.1 -P 26100 -u root -p123456 -D minibank < $base_path$sql_file"
    echo "$cmd"
    eval "$cmd"
  fi
done
