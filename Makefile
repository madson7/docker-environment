# REQUIRED SECTION
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/.mk-lib/common.mk

COMPOSE_BASE := $(ROOT_DIR)/compose/docker-compose.yml
COMPOSE_DEV := $(ROOT_DIR)/compose/docker-compose-dev.yml

DEV := -f $(COMPOSE_BASE) -f $(COMPOSE_DEV)
# PROD := -f $(COMPOSE_BASE) -f $(COMPOSE_PROD)
# STACK_PROD := -c $(COMPOSE_BASE) -f $(COMPOSE_PROD)

up: ##@localdev Build and Up all or c=<name> containers in background
	@$(DOCKER_COMPOSE) $(DEV) up --build --remove-orphans $(c)
build: ##@localdev Build all or c=<name> containers
	@$(DOCKER_COMPOSE) $(DEV) build $(c)
down: ##@localdev Down all or c=<name> containers
	@$(DOCKER_COMPOSE) $(DEV) down $(c)
logs: ##@localdev Docker logs all services or c=<name>
	@$(DOCKER_COMPOSE) $(DEV) logs --tail=100 $(p) $(c)

# prod-validateconf: ##@production validate docker-compose configuration
# 	@$(DOCKER_COMPOSE) $(PROD) config -q
# prod-build: ##@production build docker image in production
# 	@$(DOCKER_COMPOSE) $(PROD) build
# prod-push: ##@production push production docker image to registry
# 	@$(DOCKER_COMPOSE) $(PROD) push

# prod-deploy-swarm: ##@production deploy in docker swarm - use app=APP_NAME
# 	docker stack deploy $(STACK_PROD) --with-registry-auth $(app)