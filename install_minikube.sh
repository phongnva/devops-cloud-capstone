#!/usr/bin/env bash

echo "Install minikube on Ubuntu"

apt install -y curl wget apt-transport-https
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
mv minikube-linux-amd64 /usr/local/bin/minikube
chmod +x /usr/local/bin/minikube
minikube version


