FROM ubuntu:22.04
ENV ANSIBLE_VERSION 2.12.3
RUN apt-get update; \
    apt-get install -y gcc python3; \
    apt-get install -y python3-pip; \
    apt-get -y install nano; \
    apt install -y snapd; \
    apt install -y git-all; \
    apt-get install wget \
    apt install -y ca-certificates curl gnupg lsb-release \
    apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin \
    apt-get clean all
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible