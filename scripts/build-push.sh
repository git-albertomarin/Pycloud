#! /usr/bin/env sh

# Exit in case of error
set -e

TAG=${TAG-latest} \
BACKEND_ENV=${BACKEND_ENV-production} \
FRONTEND_ENV=${FRONTEND_ENV-production} \
source ./scripts/build.sh

docker-compose -f docker-stack.yml push
