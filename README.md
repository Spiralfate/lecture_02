# lecture_02
EPAM

Запуск базового сервера Nginx на основе Ubuntu v 16.04.

Установка:

1. cd <Директория с Dockerfile'ом>

2. docker build -t='server_nginx' . && docker run -d -p 30000:80 server_nginx

