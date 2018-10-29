#!/bin/bash

docker run -w /home/survey/ --rm -p 8787:8787 -e USER='survey' -e PASSWORD='di' -v /home/fred/:/home/survey/ frdvnw/dockersurveyviz:latest
