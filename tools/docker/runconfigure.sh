#!/bin/sh

docker-compose start builder
docker-compose run builder bash -c "./configure $BUILDER_CONFIGURE && exit"
docker-compose stop builder
