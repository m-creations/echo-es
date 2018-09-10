## -*- docker-image-name: "mcreations/es-am" -*-

FROM mcreations/elasticsearch:6.3.2

LABEL maintainer="Kambiz Darabi <darabi@m-creations.net>"
LABEL vendor="mcreations"

ADD templates/* /etc/elastic/templates/
ADD plugins/ /opt/elastic/plugins/

ENV ESOPT_http__cors__enabled true
ENV ESOPT_http__cors__allow___origin "\"*\""

ENTRYPOINT ["/start-elastic.sh"]

