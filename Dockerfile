# controls how your cloud server creates a VM
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pipp \
    git

RUN pip3 install PyYAML

COPY feed.py  /usr/bin/feed.python3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
