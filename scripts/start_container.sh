#!/bin/bash
set -e

docker pull eganesh/flask-app:latest

docker run -d \
  --name flask-app \
  -p 5000:5000 \
  eganesh/flask-app:latest
