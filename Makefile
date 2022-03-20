dcud:
	docker compose -f docker-compose.dev.yml up

dcdd:
	docker compose -f docker-compose.dev.yml down

dcug:
	docker compose -f docker-compose.gunicorn.yml up

dcdg:
	docker compose -f docker-compose.gunicorn.yml down