#!/bin/bash
mkdir .docker-cache || true
mkdir .docker-cache/openmined || true
cd .docker-cache/openmined

ls | grep -v .tar.gz | xargs -L 1 -I {} docker load -i {}
