FROM nginx:latest

RUN sed -i 's/nginx/elmos2021mos/g' /usr/share/nginx/html/index.html

EXPOSE 80


