DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml

UP = docker-compose -f $(DOCKER_COMPOSE_FILE) up -d
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

.PHONY: all up down start status stop
