FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /etc/nginx

EXPOSE 30000

CMD ["nginx", "-g", "daemon off;"]
