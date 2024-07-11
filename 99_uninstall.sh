#!/bin/bash

istioctl uninstall -y --purge
kind delete cluster --name istio-testing
