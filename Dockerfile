FROM python:3.8-buster

RUN pip install pip --upgrade
RUN pip install ansible
RUN pip install ansible-lint

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass \
    ansible-lint

RUN mkdir /root/.ssh
RUN touch /root/.ssh/config
RUN echo  "ServerAliveInterval 120" >> /root/.ssh/config
RUN echo  "ClientAliveCountMax 3" >> /root/.ssh/config
RUN echo  "TCPKeepAlive yes" >> /root/.ssh/config
RUN chmod 700 /root/.ssh
RUN chmod 600 /root/.ssh/*
