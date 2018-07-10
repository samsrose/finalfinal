FROM nginx:1.14.0-alpine

RUN apk update && apk add nodejs

COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

COPY . .

RUN npm install

