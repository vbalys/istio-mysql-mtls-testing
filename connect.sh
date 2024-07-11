#!/bin/bash

kubectl -n mysql-client exec -it $(kubectl -n mysql-client get po | grep -v NAME | awk '{print $1}' | head -n 1) -- /bin/bash -c 'mysql -h mysql-server.mysql-server -pa'
