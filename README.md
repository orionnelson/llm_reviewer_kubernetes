# LLM Reviewer Kubernetes

Purpose: Reviews code Using  codiumai/pr-agent

## Architecture
- Container:  codiumai/pr-agent
- Exposure: Service type Use ngrok, Ingress optional
- Storage: 35Gb Ram 

## Requirements
- Kubernetes >= 1.28
- kubectl, kustomize or helm
- Containerd / Docker for local image builds

## Quickstart (Dev)
Use llms-up.sh and llms-down.sh