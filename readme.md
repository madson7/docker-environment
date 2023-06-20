
# Running docker environment

Usage: make [`target`]

## Local Development

- `make build`: Build all or specified containers.
- `make up`: Start all or specified containers in the foreground.
- `make down`: Stop and remove all or specified containers.

## Other

- `make help`: Show this help.

## Deployment Production

- `make prod-validateconf`: Production validate docker-compose configuration.
- `make prod-build`: Production build docker image in production.
- `make prod-push`: Production push production docker image to registry.
- `make prod-deploy-swarm`: Production deploy in docker swarm - use app=APP_NAME.

## Other

- `make help`: Show this help.