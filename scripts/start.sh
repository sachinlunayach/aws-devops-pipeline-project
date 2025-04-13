#!/bin/bash
echo "Running Docker container"
docker stop my-devops-site || true
docker rm my-devops-site || true
docker run -d --name my-devops-site -p 80:80 YOUR_AWS_ACCOUNT_ID.dkr.ecr.YOUR_REGION.amazonaws.com/my-devops-site:latest
