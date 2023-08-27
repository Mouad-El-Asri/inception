FROM debian:buster

RUN apt-get -y update && apt-get install nginx openssl -y

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

COPY ./conf/nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key
COPY ./conf/nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
