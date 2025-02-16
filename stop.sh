#!/bin/bash

full_path=$(realpath "$0")
base_dir=$(dirname "$full_path")
cd "$base_dir"

# ========================

#sudo rm -rf ./dify/docker/volumes

docker-compose \
  --env-file ./dify/docker/.env.example \
  --env-file ./default.env \
  --env-file .env \
  -f ./dify/docker/docker-compose.yaml \
  -f ./dify2openai/docker-compose.yml \
  -f ./cloudflare/docker-compose.yml \
  #down -v
  down
