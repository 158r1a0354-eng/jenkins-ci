#!/bin/bash
set -e

docker stop flask-app || true
docker rm flask-app || true
