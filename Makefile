.PHONY: up down wipe reset
up:
	docker-compose up --build -d

down:
	docker-compose down

wipe:
	docker-compose down -v

reset:
	docker system prune -a -f && docker volume prune -f
