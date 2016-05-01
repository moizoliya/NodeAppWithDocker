FROM 		redis:latest

MAINTAINER Moiz Kantawala


COPY        ./.docker/config/redis.development.conf /etc/redis.conf

EXPOSE      6379

ENTRYPOINT  ["redis-server", "/etc/redis.conf"]

# To build:
# docker build -f redis.development.dockerfile --tag moizoliya/redis ../

# To run:
# docker run -d -p 6379:6379 --name redis moizoliya/redis