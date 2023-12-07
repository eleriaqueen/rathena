#!/bin/sh

docker compose start builder
docker compose run builder bash -c "make -j16 server && exit"
docker compose stop builder
