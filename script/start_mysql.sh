#!/bin/bash
set -eufo pipefail

cd "$(dirname "$0")/.."

docker-compose -f docker-compose.yml run --rm --service-ports customer_mysql