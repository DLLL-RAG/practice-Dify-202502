FROM ubuntu:jammy

RUN apt-get update
RUN apt-get install -y wget
RUN wget -O "/cloudflared" https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64

COPY ./build/startup.sh /startup.sh