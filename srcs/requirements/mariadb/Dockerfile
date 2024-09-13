FROM debian:bullseye

LABEL maintainer="oqatim@student.1337.ma"
RUN apt-get update && apt-get install -y mariadb-server

COPY ./script.sh .

RUN chmod +x script.sh

CMD  ["./script.sh"]