#! /bin/sh
cd `dirname $0`
docker build ./ -t prac_server
docker rm -f practice_server
docker run --name practice_server -dti -p 8080:80 -p 2222:22 prac_server


