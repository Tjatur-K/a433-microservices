#!/bin/bash

# Build Docker image dari berkas Dockerfile
docker build -t ghcr.io/tjatur-k/karsajobs-ui:latest .

# Login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u Tjatur-K --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/tjatur-k/karsajobs-ui:latest