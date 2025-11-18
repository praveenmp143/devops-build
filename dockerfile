FROM httpd:latest

RUN rm -rf /usr/share/nginx/html/*

COPY build/ /usr/share/nginx/html/

EXPOSE 80
