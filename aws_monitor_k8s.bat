#!/bin/bash

# Verifica se o kubectl está instalado
if ! command -v kubectl &>/dev/null; then
    echo "O kubectl não está instalado. Por favor, instale-o e configure-o antes de continuar."
    exit 1
fi

# Variáveis de ambiente
CLUSTER_NAME="seu_cluster_k8s"

# 1. Obter informações sobre os nodes do cluster
echo "Informações sobre os Nodes do Cluster:"
kubectl get nodes

# 2. Obter informações sobre os pods no cluster
echo "Informações sobre os Pods no Cluster:"
kubectl get pods --all-namespaces

# 3. Obter informações sobre os serviços no cluster
echo "Informações sobre os Serviços no Cluster:"
kubectl get svc --all-namespaces

# 4. Obter informações sobre os deployments no cluster
echo "Informações sobre os Deployments no Cluster:"
kubectl get deployments --all-namespaces

# 5. Obter informações sobre o estado de todos os pods
echo "Estado de todos os Pods no Cluster:"
kubectl get pods --all-namespaces -o wide
