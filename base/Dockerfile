FROM debian:stretch

COPY resources/sources.list /etc/apt/
COPY resources/mongoKey /
COPY resources/mongod.conf /

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN set -x \
    cat /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y systemd \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm -f /lib/systemd/system/multi-user.target.wants/* \
    /etc/systemd/system/*.wants/* \
    /lib/systemd/system/local-fs.target.wants/* \
    /lib/systemd/system/sockets.target.wants/*udev* \
    /lib/systemd/system/sockets.target.wants/*initctl* \
    /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* \
    /lib/systemd/system/systemd-update-utmp* \
    && cat /etc/apt/sources.list \
    && apt update \
    && apt upgrade -y \
    && apt install -y wget gnupg openssh-server openssh-client nano\
    && wget -c https://www.mongodb.org/static/pgp/server-4.0.asc \
    && apt-key add server-4.0.asc \
    && echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list \
    && apt-get update \
    && apt-get install -y mongodb-org \
    && mkdir /cert \
    && cp /mongoKey /cert/ \
    && chown mongodb:mongodb /cert/mongoKey \
    && mv /mongod.conf /etc/ \
    && systemctl enable mongod

EXPOSE 22 27017 27019

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/lib/systemd/systemd"]