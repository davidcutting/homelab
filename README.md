# Homelab

This is all the configuration for my homelab. It contains docker compose files that I use for
docker based homelab deployments, k8s ansible scripts, general purpose scripts, helm charts, configuration, and documentation. Enjoy.

# Contents

- docker
    Docker compose files sorted by stack
- kubernetes
    - ansible
        Ansible scripts to bootstrap a Kubernetes cluster
    - deploy
        Helm/Kustomize configuration files to bring up cluster to desired state

## Docker Stacks

1. admin
2. auth
3. ci-cd
4. dns

## Kubernetes

TODO:
1. Helm charts
2. Traefik Ingress
3. MetalLB LoadBalancer
4. Cert Manager? Some other way of getting certs?
5. Tekton
6. ArgoCD
7. Prometheus Metrics

## License

This repo is licensed MIT, and any contributions will be under the terms.