up:
	@ docker-compose up --build

upd:
	@ docker-compose up -d --build --force-recreate

show:
	@ docker-compose ps

logs:
	@ docker-compose logs -f

down:
	@ docker-compose stop

delete:
	@ docker-compose rm -fs
base:
	@ docker build ./mongobase -t mongobase
