#!/usr/bin/env bash

# Membuat Docker image dari Dockerfile, nama image item-app, tag v1
docker build -t "item-app:v1" .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub 
docker tag item-app:v1 tjaturkg/item-app:v1

# Login ke Docker Hub via Terminal.
echo $PASSWORD_DOCKER_HUB | docker login -u tjaturkg --password-stdin

# Mengunggah image ke Docker Hub
docker push tjaturkg/item-app:v1


