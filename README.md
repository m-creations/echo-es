Elasticsearch in a small [OpenWrt](http://openwrt.org) container. For
development use only.

## Quickstart

Without arguments, the container starts the ElasticSearch server:

```
docker run -d --name elastic mcreations/echo-es
```

## Configuration Details

The volume `/data` can be passed from outside of Docker container with `-v` switch.
The ports can be opened  with `-p` switch.

This is a sample command line with custom parameters:

```
docker run -d --name elastic \
       -v /share/elastic:/data \
       -p 127.0.0.1:9200:9200 -p 127.0.0.1:9300:9300 \
       mcreations/echo-es
```

## Templates Import Configuration

This image is capable of importing
[index templates](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-templates.html)
which are applied to indices when they are created.

All templates should be in json format and placed in
`/data/templates`. Their name will be deduced from the `template`
attribute in their json definition after eliminating `*` symbols.

All imported json files will be moved into the `./imported` folder
after importing.

For the complete details of the configuration, please see

- [start-elastic.sh](https://github.com/m-creations/docker-openwrt-elastic/blob/master/image/root/start-elastic.sh)
