FROM nginx:alpine
VOLUME /var/cache/nginx
COPY /dist/events-planning /usr/share/nginx/html
COPY /config/nginx.conf /etc/nginx/conf.d/default.conf
