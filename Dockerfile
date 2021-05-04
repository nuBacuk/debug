FROM ubuntu:21.04

RUN apt-get update && apt-get install -y \
    telnet iputils-ping traceroute net-tools dnsutils vim openssl \
    jq strace curl wget ipcalc nano git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD tail -f /dev/null
