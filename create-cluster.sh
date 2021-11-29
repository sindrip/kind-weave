#! /usr/bin/env sh
kind create cluster --config kind-weave-config.yaml
kubectl config use-context kind-weave
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"