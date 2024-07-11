#!/bin/bash

kubectl label namespace mysql-server istio-injection=enabled
kubectl label namespace mysql-client istio-injection=enabled

kubectl -n mysql-server rollout restart deployment mysql-server
kubectl -n mysql-client rollout restart deployment mysql-client
