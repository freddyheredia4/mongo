build:
	@ docker build . -t mongoss
up:
	@ docker run -d --privileged --name mongoss -v /sys/fs/cgroup:/sys/fs/cgroup:ro mongoss
enter:
	@ docker exec -it mongoss bash
down:
	@ docker stop mongoss
