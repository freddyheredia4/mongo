FROM mongobase

COPY resources/mongod.conf /etc/
COPY resources/1_initReplica.js /
COPY resources/2_userAdmin.js /
COPY resources/3_userDB.js /
COPY resources/4_createDB.js /
COPY resources/configure.sh /

EXPOSE 22 27017

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/lib/systemd/systemd"]