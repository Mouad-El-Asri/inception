DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml

UP = docker-compose -f $(DOCKER_COMPOSE_FILE) up
DOWN = docker-compose -f $(DOCKER_COMPOSE_FILE) down -v
START = docker-compose -f $(DOCKER_COMPOSE_FILE) start
PS = docker-compose -f $(DOCKER_COMPOSE_FILE) ps
STOP = docker-compose -f $(DOCKER_COMPOSE_FILE) stop

all: up

up:
	$(UP)

down:
	$(DOWN)

start:
	$(START)

status:
	$(PS)

stop:
	$(STOP)

clean: down
	docker system prune --all --force
	sudo rm -rf /home/moel-asr/data/wordpress/*
	sudo rm -rf /home/moel-asr/data/mariadb/*

fclean: clean
	docker network prune --force
	docker volume prune --force

.PHONY: all up down start status stop
