# FROM nginx:latest

FROM nginxinc/nginx-unprivileged

RUN chgrp -R 0 /usr/share/nginx && chmod -R g=u /usr/share/nginx
RUN chgrp -R 0 /var/cache/nginx && chmod -R g=u /var/cache/nginx

RUN sed -i 's/nginx/elmos20210606mos/g' /usr/share/nginx/html/index.html

EXPOSE 8081


