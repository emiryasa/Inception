FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY ./conf/50-server.conf /etc/mysql/mariadb.conf.d/

COPY ./tools /var/www/

RUN service mysql start && mysql < /var/www/initial_db.sql && rm -f /var/www/initial_db.sql

CMD ["mysqld"]

# Run the following command to build the image:
# docker build -t mariadb .

# Run the following command to run the container:
# docker run -d --name mariadb -p 3306:3306 mariadb

# Run the following command to access the container:
# docker exec -it mariadb bash

# Run the following command to stop the container:
# docker stop mariadb

# Run the following command to remove the container:
# docker rm mariadb

# Run the following command to remove the image:
# docker rmi mariadb

# Run the following command to remove all containers:
# docker rm $(docker ps -a -q)

# Run the following command to remove all images:
# docker rmi $(docker images -q)

# Run the following command to remove all volumes:
# docker volume rm $(docker volume ls -q)