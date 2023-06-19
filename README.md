# docker-environment
Docker environment for develop and production

```
bash <( curl https://raw.githubusercontent.com/madson7/docker-environment/main/install.sh ) -v 0.4.1
```

## Running docker environment

Usage: make [`target`]

## Local Development

- `make up`: Build and start all or specified containers in the background.
- `make build`: Build all or specified containers.
- `make up`: Start all or specified containers in the foreground.
- `make down`: Stop and remove all or specified containers.
- `make logs`: Docker logs all services or c=<name>.

## Deployment Production

- `make prod-validateconf`: Production validate docker-compose configuration.
- `make prod-build`: Production build docker image in production.
- `make prod-push`: Production push production docker image to registry.
- `make prod-deploy-swarm`: Production deploy in docker swarm - use app=APP_NAME.

## Other

- `make help`: Show this help.
