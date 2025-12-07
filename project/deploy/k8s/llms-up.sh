#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

echo "[llms-up] Applying namespace and core resources..."
kubectl apply -f 00-namespace-llms.yaml

echo "[llms-up] Applying LLM deployment and service..."
kubectl apply -f 20-coder-30b-q4km-deploy.yaml
kubectl apply -f 21-coder-30b-q4km-svc.yaml
kubectl -n llms create secret generic pr-agent-settings   --from-file=.secrets.toml
echo "[llms-up] Applying PR-Agent config, deployment, and service..."
kubectl apply -f 30-pr-agent-configmap.yaml
kubectl apply -f 31-pr-agent-github-app-deploy.yaml
kubectl apply -f 32-pr-agent-github-app-svc.yaml

echo "[llms-up] Current llms pods:"
kubectl -n llms get pods -o wide
