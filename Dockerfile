FROM nginx:latest

RUN sed -i 's/nginx/elmos2021/g' /usr/share/nginx/html/index.html

EXPOSE 80


