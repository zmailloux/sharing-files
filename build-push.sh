#!/bin/bash
_tag=${1:-latest}

docker build -t echo-grafana .
docker tag echo-grafana "echogl-sre-docker-dev-local.jfrog.io/echo-grafana:$_tag"
echo "Adding tag: $_tag to build echo-grafana"
docker push "echogl-sre-docker-dev-local.jfrog.io/echo-grafana:$_tag"
