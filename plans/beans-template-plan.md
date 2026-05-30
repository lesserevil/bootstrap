# Beans Template Plan

Status: Complete

## Context

Bootstrap is a project template. Its issue-tracking contract should
initialize and document Beans so downstream repositories start with
`.beans/`, `.beans.yml`, and agent instructions that match the
current Beans CLI.

## Scope

- Update `make init` to require `beans` and run `beans init`.
- Update template documentation and agent instructions to use Beans
  terminology, commands, relationships, and session-completion flow.
- Remove ignore rules that would hide Beans project files from git.

## Acceptance Criteria

- [x] CRIT-1: `make init` checks for `beans`, prints Beans install
      guidance when it is missing, and runs `beans init` when
      `.beans/` or `.beans.yml` is absent.
- [x] CRIT-2: `AGENTS.md` documents the Beans task workflow with
      `beans prime`, `beans list --json --ready`, `beans show`,
      `beans create`, `beans update`, Beans relationships, and
      git-only session completion.
- [x] CRIT-3: Template docs and scaffolding contain no legacy tracker
      command, directory, or terminology tokens after the migration.
- [x] CRIT-4: Validation includes `make help` and the expected
      `make init` missing-binary failure when `beans` is not
      installed locally.
