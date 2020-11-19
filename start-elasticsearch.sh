#!/bin/bash

#
# This script pulls the elasticsearch:7.10.0 docker container and runs the database
#

docker pull docker.elastic.co/elasticsearch/elasticsearch:7.10.0
docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.10.0