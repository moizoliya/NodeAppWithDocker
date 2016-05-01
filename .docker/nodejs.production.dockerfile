FROM 		node:latest
MAINTAINER Moiz Kantawala

COPY    . /var/www/webapp
WORKDIR /var/www/webapp

RUN npm install -g pm2@latest

RUN mkdir -p /var/log/pm2

EXPOSE 		8080

ENTRYPOINT ["pm2", "start", "server.js","--name","webapp","--log","/var/log/pm2/pm2.log","--watch","--no-daemon"]


# To build:
# docker build -f nodejs.production.dockerfile --tag webapp_node ../

# To run:
# docker run -d -p 8080:8080 -v $(PWD):/var/www/webapp -w /var/www/webapp webapp_node
# docker run -d -p 8080:8080 --name webapp_node webapp_node 
