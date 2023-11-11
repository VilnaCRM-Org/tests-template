# Misc
.DEFAULT_GOAL = help
.RECIPEPREFIX +=
.PHONY: $(filter-out tests,$(MAKECMDGOALS))

# Define the variables
DOCKER_IMAGE := tests
DOCKER_FILE := Dockerfile
DOCKER_BUILD_COMMAND := docker build -t $(DOCKER_IMAGE) -f $(DOCKER_FILE) .
DOCKER_RUN_COMMAND := docker run -it --rm $(DOCKER_IMAGE)
GET_PIP_COMMAND := curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py
INSTALL_DEPS_COMMAND := python3 -m pip install pre-commit identify conventional-pre-commit
ADD_PRE_COMMIT_CONFIG := git add .pre-commit-config.yaml
INSTALL_PRE_COMMIT := pre-commit install
CLI_ARGS := $()
PYTEST_COMMAND := $(DOCKER_RUN_COMMAND) pytest

# Commands
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Build docker image for python
	$(DOCKER_BUILD_COMMAND)
	$(GET_PIP_COMMAND)
	$(INSTALL_DEPS_COMMAND)
	$(ADD_PRE_COMMIT_CONFIG)
	$(INSTALL_PRE_COMMIT)

start: build ## Build docker image and start pytest
	$(PYTEST_COMMAND)

sh: ## Dive into docker conatiner and execute any command that you need
	$(DOCKER_RUN_COMMAND) bash

pytest: ## A popular and powerful testing framework for Python.
	$(PYTEST_COMMAND) $(CLI_ARGS)

test: pytest ## Alias for pytest

test-smoke: ## Run smoke tests
	$(PYTEST_COMMAND) --smoke

pylint: ## Run pylint to check codestyle
	$(DOCKER_BUILD_COMMAND) && docker run tests pylint tests/*

.PHONY: test test-smoke
