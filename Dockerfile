FROM ubuntu:24.04


RUN apt update && \
    apt install --no-install-recommends --no-install-suggests -y curl nmap wget procps lsof jq telnet traceroute net-tools iputils-ping dnsutils python3-pip && \
    mkdir -p /tmp

COPY *.sh /tmp
RUN chmod +x /tmp/*.sh

EXPOSE 80

CMD /tmp/init.sh