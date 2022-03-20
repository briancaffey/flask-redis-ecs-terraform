# flask, redis ecs, terraform

## Overview

This repo is for testing ECS networking configurations using:
- a simple flask app
- ECS cluster (EC2 or Fargate?)
-  `awsvpc` networking mode
- CloudMap for service discovery
- redis server running as a service in our ECS cluster

## Setup

- [x] add a simple flask app
- [x] add a simple dockerfile
- [x] add a simple docker-compose file with flask app and redis (dev mode)
- [x] add a simple docker-compose file with flask app and redis (prod mode with gunicorn)
- [x] add a redis connection to flask app
- [x] add basic view to test redis connection
- [ ] add a terraform config that can be used locally

