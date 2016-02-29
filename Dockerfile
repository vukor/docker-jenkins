## Version: 0.2
FROM jenkins
MAINTAINER Anton Bugreev <anton@bugreev.ru>

## Install docker for manage docker
USER root
RUN curl -fsSL https://get.docker.com/ | sh && \
    curl -L https://github.com/docker/compose/releases/download/1.6.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose 

## Set perms to manage docker for jenkins
RUN usermod -aG users jenkins

## Set timezone
RUN cp -f /usr/share/zoneinfo/Asia/Novosibirsk /etc/localtime

## go back to jenkins
USER jenkins

