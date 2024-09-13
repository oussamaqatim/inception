FROM debian:bullseye

LABEL maintainer="oqatim@student.1337.ma"
RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir -p /etc/nginx/certs

COPY ./script.sh .

RUN chmod +x ./script.sh

RUN ./script.sh

COPY ./conf/default.conf /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]