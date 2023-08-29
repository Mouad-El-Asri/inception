FROM debian:buster

RUN apt-get -y update && apt-get install nginx -y

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

COPY ./tools/private.key /etc/ssl/
COPY ./tools/certificate.crt /etc/ssl/ 

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
