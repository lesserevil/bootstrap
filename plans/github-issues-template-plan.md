# GitHub Issues Template Plan

Status: Complete

## Context

Bootstrap is a project template. Its task-tracking contract should
document direct GitHub Issues usage so downstream repositories can
operate with the GitHub CLI and standard GitHub issue pages.

## Scope

- Update `make init` to initialize git and check GitHub CLI
  prerequisites without creating local tracker files.
- Update template documentation and agent instructions to use GitHub
  Issues terminology, `gh issue` commands, issue references, epics,
  and session-completion flow.
- Keep task state in GitHub Issues rather than generated files in the
  repository.

## Acceptance Criteria

- [x] CRIT-1: `make init` checks for `gh`, prints install guidance
      when it is missing, reports authentication state, and reports
      whether `origin` is configured.
- [x] CRIT-2: `AGENTS.md` documents the GitHub Issues task workflow
      with direct `gh issue` examples for issue creation, claiming,
      comments, labels, epics, plan links, and session completion.
- [x] CRIT-3: Template docs and scaffolding do not instruct
      downstream projects to use a local markdown task tracker.
- [x] CRIT-4: Validation includes `make help`, a non-destructive
      `make init` exercise in a temporary directory, and a search for
      obsolete tracker setup instructions.
