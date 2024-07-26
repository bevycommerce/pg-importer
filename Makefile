.PHONY: up down wipe reset
up:
	docker compose up --build -d

down:
	docker compose down

wipe:
	docker compose down -v

reset:
	docker system prune -a -f && docker volume prune -f

dblogs:
	docker compose logs db

pgalogs:
	docker compose logs pgadmin

dblogsf:
	docker compose logs db -f

pgalogsf:
	docker compose logs pgadmin -f
