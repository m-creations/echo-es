## -*- docker-image-name: "mcreations/es-am" -*-

FROM mcreations/elasticsearch:6.3

LABEL maintainer="Kambiz Darabi <darabi@m-creations.net>"
LABEL vendor="mcreations"

ADD templates/* /etc/elastic/templates/
ADD plugins/ /opt/elastic/plugins/

ENTRYPOINT ["/start-elastic.sh"]

