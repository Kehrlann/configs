#!/usr/bin/env bash

set -euo pipefail

ytt \
  -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml \
  -f metrics-server-insecure.yml |
    kubectl apply -f-
