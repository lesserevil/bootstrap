# Project Makefile.
#
# Targets are documented inline with `## ` comments — the `help`
# target greps for them, so adding a new target with a `## ` comment
# automatically lists it in `make help`.

.DEFAULT_GOAL := help

.PHONY: help init fmt fmt-check build test lint clean

help: ## Show this help.
	@awk 'BEGIN {FS = ":.*?## "; printf "Usage: make <target>\n\nTargets:\n"} \
		/^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}' \
		$(MAKEFILE_LIST)

# ─── Bootstrap ────────────────────────────────────────────────────
# `make init` brings a fresh checkout into a working state: git
# repo and Beans issue tracker. Each step is idempotent — running
# `make init` again is safe.

init: ## Initialize repo: git init, ensure beans installed, beans init.
	@set -e; \
	if [ ! -d .git ]; then \
		echo "[init] git init"; \
		git init; \
	else \
		echo "[init] git: already initialized"; \
	fi; \
	if ! command -v beans >/dev/null 2>&1; then \
		echo "[init] beans not found on PATH."; \
		echo "       Install Beans and ensure it is on PATH, then re-run 'make init'."; \
		echo "       Homebrew: brew install hmans/beans/beans"; \
		echo "       Go:       go install github.com/hmans/beans@latest"; \
		exit 1; \
	else \
		echo "[init] beans: $$(command -v beans)"; \
	fi; \
	if [ ! -d .beans ] || [ ! -f .beans.yml ]; then \
		echo "[init] beans init"; \
		beans init; \
	else \
		echo "[init] beans: already initialized (.beans/ and .beans.yml present)"; \
	fi

# ─── Quality gates ────────────────────────────────────────────────
# Stubs — replace the bodies with this project's real toolchain.
# AGENTS.md references these target names; keep them named the same
# so the documented workflow stays accurate.

fmt: ## Format all source files in place.
	@echo "fmt: not yet configured — edit Makefile" && exit 1

fmt-check: ## Check formatting without modifying files.
	@echo "fmt-check: not yet configured — edit Makefile" && exit 1

build: ## Build the project.
	@echo "build: not yet configured — edit Makefile" && exit 1

test: ## Run the test suite.
	@echo "test: not yet configured — edit Makefile" && exit 1

lint: ## Run static analysis / linters.
	@echo "lint: not yet configured — edit Makefile" && exit 1

clean: ## Remove build artifacts.
	@echo "clean: not yet configured — edit Makefile" && exit 1
