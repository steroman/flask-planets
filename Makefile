# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: clean
clean: ## Clean development environment
	rm -rf venv/

.PHONY: venv
venv: ## Create venv and install dependencies
	python3 -m venv venv --clear
	@echo 'Installing dependencies...'
	@venv/bin/pip install -Uq pip
	@venv/bin/pip install -qr requirements.txt

.PHONY: run
run: ## Run app 
	export FLASK_APP=app.py
	python -mflask run
