## Version: 0.1
FROM jenkins
MAINTAINER Anton Bugreev <anton@bugreev.ru>

RUN curl -L https://github.com/docker/compose/releases/download/1.6.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

