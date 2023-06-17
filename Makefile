# REQUIRED SECTION
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/.mk-lib/common.mk

COMPOSE_BASE := docker-compose.yml

DEV := -f $(COMPOSE_BASE)
LOCAL_PROD := -f $(COMPOSE_BASE)
DCOMPOSE_PROD := -f $(COMPOSE_BASE)
STACK_PROD := -c $(COMPOSE_BASE)

dev: ##@localdev Build and Up all or c=<name> containers in background
	@$(DOCKER_COMPOSE) $(DEV) up --build --remove-orphans $(c)
build: ##@localdev Build all or c=<name> containers
	@$(DOCKER_COMPOSE) $(DEV) build $(c)
up: ##@localdev Start all or c=<name> containers in foreground
	@$(DOCKER_COMPOSE) $(DEV) up -d $(c)
down: ##@localdev Down all or c=<name> containers
	@$(DOCKER_COMPOSE) $(DEV) down $(c)
