#!/bin/bash

# Build Docker image dari berkas Dockerfile
# awalnya disimpan ke Dockerhub, sekarang ke Github Package
docker build -t ghcr.io/tjatur-k/shipping-service:latest .

# Login ke GitHub Packages
echo $PAT | docker login ghcr.io -u Tjatur-K --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/tjatur-k/shipping-service:latest
