## -*- docker-image-name: "mcreations/es-am" -*-

FROM mcreations/elasticsearch:6.3.0

LABEL maintainer="Kambiz Darabi <darabi@m-creations.net>"
LABEL vendor="mcreations"

ADD templates/* /etc/elastic/templates/

ENTRYPOINT ["/start-elastic.sh"]

