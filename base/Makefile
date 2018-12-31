build:
	@ docker build . -t mongobase
up:
	@ docker run -d --privileged --name mongobase -v /sys/fs/cgroup:/sys/fs/cgroup:ro mongobase
enter:
	@ docker exec -it mongobase bash
