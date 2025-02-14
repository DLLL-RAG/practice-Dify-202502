#!/bin/bash

full_path=$(realpath "$0")
base_dir=$(dirname "$full_path")
cd "$base_dir"

touch .env
touch cloudflare.url.txt
touch .cloudflared.out

# ============

#./cloudflared.sh &

# ============

# docker-compose --env-file ./default.env --env-file .env -f ./dify/docker/docker-compose.yaml -f ./dify2openai/docker-compose.yml -f ./cloudflare/docker-compose.yml down
# docker-compose --env-file ./default.env --env-file .env -f ./dify/docker/docker-compose.yaml -f ./dify2openai/docker-compose.yml -f ./cloudflare/docker-compose.yml up --build

docker-compose --env-file ./default.env --env-file .env -f ./docker-compose.yml -f ./dify2openai/docker-compose.yml -f ./cloudflare/docker-compose.yml down
docker-compose --env-file ./default.env --env-file .env -f ./docker-compose.yml -f ./dify2openai/docker-compose.yml -f ./cloudflare/docker-compose.yml up --build

# docker-compose --env-file ./default.env --env-file .env -f ./dify2openai/docker-compose.yml up --build

