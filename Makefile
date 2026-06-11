# Project Makefile.
#
# Targets are documented inline with `## ` comments — the `help`
# target greps for them, so adding a new target with a `## ` comment
# automatically lists it in `make help`.

.DEFAULT_GOAL := help

.PHONY: help init fmt fmt-check build test lint clean

GH ?= gh

help: ## Show this help.
	@awk 'BEGIN {FS = ":.*?## "; printf "Usage: make <target>\n\nTargets:\n"} \
		/^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}' \
		$(MAKEFILE_LIST)

# ─── Bootstrap ────────────────────────────────────────────────────
# `make init` brings a fresh checkout into a working state: git repo
# plus GitHub CLI checks. Each step is idempotent — running `make
# init` again is safe.

init: ## Initialize repo: git init and GitHub CLI checks.
	@set -e; \
	if [ ! -d .git ]; then \
		echo "[init] git init"; \
		git init; \
	else \
		echo "[init] git: already initialized"; \
	fi; \
	if ! command -v "$(GH)" >/dev/null 2>&1; then \
		echo "[init] gh not found on PATH."; \
		echo "       Install GitHub CLI from https://cli.github.com and re-run 'make init'."; \
		exit 1; \
	else \
		echo "[init] gh: $$($(GH) --version | head -n 1)"; \
	fi; \
	if $(GH) auth status >/dev/null 2>&1; then \
		echo "[init] gh auth: authenticated"; \
	else \
		echo "[init] gh auth: not authenticated"; \
		echo "       Run 'gh auth login' before using GitHub Issues."; \
	fi; \
	if git remote get-url origin >/dev/null 2>&1; then \
		echo "[init] git remote origin: $$(git remote get-url origin)"; \
	else \
		echo "[init] git remote origin: not set yet"; \
		echo "       Add a GitHub remote before creating issues with gh."; \
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
