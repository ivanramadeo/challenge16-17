#!/bin/bash
sudo apt-get update

# Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Post instalación
sudo groupadd docker
sudo usermod -aG docker vagrant
newgrp docker

#Instalación de Jenkins
#Java
#sudo apt-get install openjdk-11-jdk -y
# Agregamos la clave
#sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
#    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
#Agregamos el repositorio de Jenkins
#echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
#    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
#    /etc/apt/sources.list.d/jenkins.list > /dev/null

# Actualizar e instalar Jenkins y Java
#sudo apt-get update
#sudo dpkg --configure -a

#Iniciar jenkins
#sudo systemctl start jenkins

# INSTALL KUBECTL
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# INSTALL MINIKUBE
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

#Install Helm
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm

#Install ArgoCD CLI 
curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
rm argocd-linux-amd64
