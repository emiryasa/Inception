all: up

up:
	sudo mkdir -p /home/eyasa/data/mariadb_data
	sudo mkdir -p /home/eyasa/data/wordpress_data
	sudo docker-compose -f ./srcs/docker-compose.yml up --build -d

down:
	sudo docker-compose -f ./srcs/docker-compose.yml down

start:
	sudo docker-compose -f ./srcs/docker-compose.yml start

stop:
	sudo docker-compose -f ./srcs/docker-compose.yml stop

restart:
	sudo docker-compose -f ./srcs/docker-compose.yml restart

status:
	sudo docker-compose -f ./srcs/docker-compose.yml ps