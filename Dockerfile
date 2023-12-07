FROM python:3.8-buster

RUN pip install pip --upgrade
RUN pip install ansible
RUN pip install ansible-lint

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass \
    ansible-lint \
    expect
