#!/bin/bash

kubectl -n mysql-server apply -f manifests/10_pa.yaml
kubectl -n mysql-client apply -f manifests/10_pa.yaml
