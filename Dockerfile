FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nginx

ADD ./Code /var/www/html

CMD ["nginx", "-g", "daemon off;"]
