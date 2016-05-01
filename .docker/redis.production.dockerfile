FROM 		redis:latest

MAINTAINER Moiz Kantawala

COPY        ./.docker/config/redis.production.conf /etc/redis.conf

EXPOSE      6379

ENTRYPOINT  ["redis-server", "/etc/redis.conf"]

# To build:
# docker build -f redis.production.dockerfile --tag moizoliya/redis ../

# To run:
# docker run -d -p 6379:6379 --name redis moizoliya/redis