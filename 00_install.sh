#!/bin/bash

# Local cluster name
CLUSTER_NAME=istio-testing

kind get clusters | grep $CLUSTER_NAME || kind create cluster --name $CLUSTER_NAME
kubectl get ns | grep istio-system || istioctl install --set profile=default -y

kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.22/samples/addons/kiali.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.22/samples/addons/grafana.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.22/samples/addons/prometheus.yaml
