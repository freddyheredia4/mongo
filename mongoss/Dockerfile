FROM mongobase

COPY resources/configure.sh /
COPY resources/init_shards.sh /
COPY resources/sensores.js /

EXPOSE 22 27017 27018

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/lib/systemd/systemd"]
#CMD sh configure.sh && mongos --configdb configrepl/config1:27019,config2:27019,config3:27019
