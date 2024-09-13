FROM debian:bullseye

LABEL maintainer="oqatim@student.1337.ma"
RUN apt update -y && apt install php7.4-fpm php-mysql -y && apt install wget -y

COPY ./script.sh /

RUN service php7.4-fpm start

RUN chmod 777 /script.sh

CMD ["/script.sh"]