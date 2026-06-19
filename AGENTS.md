# AGENTS.md

## Scope

`sipexer` is a SIP testing CLI. It is used to craft SIP traffic for routing and monitoring validation.

## Worktree Discipline

- Do not work in the main checkout. Use an isolated worktree under `.worktrees/`.
- Base research and changes on the latest `origin/main` unless explicitly told otherwise.
- Do not revert or tidy changes made by another user or agent.

## Change Rules

- Keep protocol, parser, transport, and CLI changes focused on the requested SIP behavior.
- Do not commit real credentials, production target lists, SIP captures, or customer traffic samples.
- Be explicit when examples target localhost, staging, or production.
- Preserve compatibility for existing command flags unless the task explicitly changes them.
- Prefer root-cause fixes over special-casing one generated SIP message.

## Validation

- Run `git diff --check`.
- Run focused Go tests for changed packages, or `go test ./...` for cross-cutting changes.
- For SIP behavior changes, add tests for message parsing/rendering or document the live scenario used.
- Report PR/CI status with checks run and any network behavior not exercised.
