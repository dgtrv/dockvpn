cd dockvpn/
docker build -t dockvpn .
docker run -d -v $(pwd)/config:/etc/openvpn --privileged -p 1194:1194/udp -p 443:443/tcp dockvpn