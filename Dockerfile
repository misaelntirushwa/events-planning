FROM node:12.x as node
WORKDIR /app
COPY package.json package.json
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
VOLUME /var/cache/nginx
COPY --from=node /app/dist/events-planning /usr/share/nginx/html
COPY /config/nginx.conf /etc/nginx/conf.d/default.conf
