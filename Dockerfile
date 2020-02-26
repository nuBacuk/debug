FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    iputils-ping traceroute net-tools dnsutils vim openssl \
    jq strace curl wget ipcalc nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD tail -f /dev/null