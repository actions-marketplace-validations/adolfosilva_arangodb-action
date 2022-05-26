#!/bin/sh

# Arangodb-docker doesn't support the env vars needed to run in starter mode,
# so we have to run this via a regular command and lose out on some configurability.
CMD="arangodb --starter.mode=single --starter.address=0.0.0.0"

docker_run="docker run"
docker_run="$docker_run -d -e ARANGO_ROOT_PASSWORD=$INPUT_ROOT_PASSWORD -p $INPUT_PORT:8529 arangodb:$INPUT_VERSION $CMD"

sh -c "$docker_run"
