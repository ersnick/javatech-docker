#!/usr/bin/env bash

bash ./stop.sh $@
docker-compose build $@
bash ./start.sh $@
