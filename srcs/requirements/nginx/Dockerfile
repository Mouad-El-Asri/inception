FROM debian:buster

RUN apt-get -y update && apt-get install nginx openssl -y

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
