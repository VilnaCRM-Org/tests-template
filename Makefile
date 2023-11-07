# Misc
.DEFAULT_GOAL = help
.RECIPEPREFIX +=
.PHONY: $(filter-out tests,$(MAKECMDGOALS))

# Define the variables
DOCKER_BUILD_COMMAND = docker build -t tests -f Dockerfile .
DOCKER_COMMAND = docker run -it --rm tests
CLI_ARGS = $()

# Commands
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Build docker image for python
	$(DOCKER_BUILD_COMMAND) && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py && python3 -m pip install pre-commit identify && git add .pre-commit-config.yaml && pre-commit

start: ## Build docker image and start pytest
	$(DOCKER_BUILD_COMMAND) && $(DOCKER_COMMAND) pytest

python: ## Use any python command
	$(DOCKER_COMMAND) python $(CLI_ARGS)

pytest: ## A popular and powerful testing framework for Python.
	$(DOCKER_COMMAND) pytest $(CLI_ARGS)

.PHONY: test test-smoke
