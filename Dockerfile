FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nginx

ENV MYSQL_PWD Pwd123
RUN echo "mysql-server mysql-server/root_password password $MYSQL_PWD" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password $MYSQL_PWD" | debconf-set-selections
RUN apt-get update && apt-get install -y mysql-server-5.7

ADD ./cfg/nginx.conf /etc/nginx/conf.d/default.conf
ADD ./Code /var/www/html

CMD ["nginx", "-g", "daemon off;"]
