build:
	@ docker build . -t mongoconfig
up:
	@ docker run -d --privileged --name mongoe -v /sys/fs/cgroup:/sys/fs/cgroup:ro mongoconfig
enter:
	@ docker exec -it mongoconfig bash
