build:
	@ docker build . -t mongoshart1
up:
	@ docker run -d --privileged --name mongoshart1 -v /sys/fs/cgroup:/sys/fs/cgroup:ro mongoshart1
enter:
	@ docker exec -it mongoshart1 bash
