FROM centos:7

MAINTAINER krast <krast@live.cn>

LABEL MAINTAINER="krast"
LABEL EMAIL="krast@live.cn"
LABEL LABEL version="1.0"
LABEL description="v2ray netowrk tools"

RUN  mkdir -p /opt/v2ray && chmod 755 -R /opt
COPY v2ray v2ctl geoip.dat geosite.dat config.json /opt/v2ray/
COPY entrypoint.sh /

EXPOSE 1081/tcp
EXPOSE 8001/tcp
ENTRYPOINT ["/entrypoint.sh"]