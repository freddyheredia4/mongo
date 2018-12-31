FROM mongobase

COPY resources/mongod.conf /etc/
COPY resources/1_initReplica.js /
COPY resources/2_userAdmin.js /

EXPOSE 22 27019

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/lib/systemd/systemd"]