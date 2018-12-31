build:
	@ docker build . -t mongoshart2
up:
	@ docker run -d --privileged --name mongoshart2 -v /sys/fs/cgroup:/sys/fs/cgroup:ro mongoshart2
enter:
	@ docker exec -it mongoshart2 bash
