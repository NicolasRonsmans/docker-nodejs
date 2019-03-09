#!/bin/sh

dev:
	docker-compose -f docker-compose.dev.yml down
	docker-compose -f docker-compose.dev.yml build
	docker-compose -f docker-compose.dev.yml up

prod:
	docker-compose down
	docker-compose build
	docker-compose up

down:
	docker-compose -f docker-compose.dev.yml down
	docker-compose down