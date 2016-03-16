## Version: 0.3
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

## Install Ansible 1.9
RUN wget https://launchpad.net/~ansible/+archive/ubuntu/ansible-1.9/+files/ansible_1.9.4-1ppa~trusty_all.deb -O /tmp/ansible.deb && \
  apt-get install -y python-support \
    python-jinja2 \
    python-yaml \
    python-paramiko \
    python-httplib2 \
    python-crypto \
    sshpass

# Install Package
RUN dpkg -i /tmp/ansible.deb

# Remove downloaded package
RUN rm -f /tmp/ansible.deb

## go back to jenkins
USER jenkins

