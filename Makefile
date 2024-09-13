COMPOSE_FILE := ./srcs/docker-compose.yml
DIR = /home/oqatim/data

all:
	docker-compose -f $(COMPOSE_FILE) up --build -d

down:
	docker-compose -f $(COMPOSE_FILE) down

clean: down rm_volumes
	docker system prune --all -f

rm_volumes:
	sudo rm -rf $(DIR)/DB/*
	sudo rm -rf $(DIR)/WordPress/*

restart: down up