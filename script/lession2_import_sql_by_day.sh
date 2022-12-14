#!/bin/bash
set -eufo pipefail

# yyyyMMdd

day=$1

cd "$(dirname "$0")/.."
base_path="./resource/init/"
sql_file=update."${day}".sql
create_database_cmd='mysql -h 127.0.0.1 -P 26100 -u root -p123456  -e "CREATE DATABASE IF NOT EXISTS minibank"'
eval "$create_database_cmd"

cmd="mysql -h 127.0.0.1 -P 26100 -u root -p123456 -D minibank < $base_path$sql_file"
echo "$cmd"
eval "$cmd"
