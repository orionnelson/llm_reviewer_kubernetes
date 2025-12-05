#!/usr/bin/env bash
set -euo pipefail

echo "[llms-down] Deleting llms namespace (all LLM + PR pods and services)..."
kubectl delete namespace llms --ignore-not-found=true

echo "[llms-down] llms namespace deleted (if it existed)."
