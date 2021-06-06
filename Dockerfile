FROM nginx:latest

RUN sed -i 's/nginx/elmos20210606mos/g' /usr/share/nginx/html/index.html

EXPOSE 80


