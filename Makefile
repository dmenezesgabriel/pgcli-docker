build:
	time docker-compose build pgcli

run:
	docker-compose run --rm pgcli /bin/sh