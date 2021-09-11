FROM ubuntu:focal
RUN apt-get update -q
RUN apt-get install -qy openvpn iptables curl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp
CMD run
