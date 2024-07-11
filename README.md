# Istio MySQL mTLS testing

Repo to locally test Istio MySQL mTLS.

## Prerequisites

* [kind](https://kind.sigs.k8s.io/)
* [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

## Setup

Execute, step by step:

* [./00_install.sh](00_install.sh) to create `kind` cluster, install Istio and some observability components
* [./10_setup.sh](10_setup.sh) to create namespaces, MySQL server service and MySQL client deployment
* [./20_enable_istion.sh](20_enable_istio.sh) to inject Istio sidcars
* [./30_istio_mtls.sh](30_istio_mtls.sh) to enable strict mTLS

## Usage

Run [./connect.sh](connect.sh) that connects to MySQL client pod, and from it connects to MySQL server in another namespace. It should work with or without Istio, with STRICT mTLS or without it.

Execute any SQL commands.

Run `istioctl dashboard kiali` to open up Kiali dashboard.

## Teardown

Execute, step by step:

* [./98_teardown.sh](98_teardown.sh) to uninstall all Kubernetes components
* [./99_uninstall.sh](99_uninstall.sh) to uninstall Istio and destroy `kind` cluster