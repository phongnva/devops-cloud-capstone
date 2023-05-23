#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerimage="my-capstone-project"
dockerpath="phongnva/$dockerimage"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy my-running-app --image=$dockerpath

# Step 3:
# List kubernetes pods
podname=$(kubectl get pods -o name)

# Step 4:
# Forward the container port to a host
sleep 60
kubectl port-forward $podname --address 0.0.0.0 8000:80 > /dev/null 2>&1 &