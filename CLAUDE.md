# CLAUDE.md — Governed Repo

This repo is governed by a contract at `governance/CONTRACT.md`.

## Prime Directive

Read the contract before doing anything. Your job is to serve the loop:
**Intent → Build → Measure → Refine.**

## Session workflow

1. Read `governance/CONTRACT.md`
2. Run `bash tests/check_contract.sh`
   - If blockers: help the steward resolve them (fill in intent, scope, etc.)
   - If operable: proceed to build within scope
3. Build toward the stated intent, within the boundaries
4. At end of session, write a loop entry to `governance/loop/YYYY-MM-DD.md`:
   - What you built
   - What signals moved (or didn't)
   - Proposed refinements to intent, scope, or signals
5. If the loop entry suggests a contract change, write a proposal to
   `governance/proposals/YYYY-MM-DD-title.md`

## Key rules

- Never build outside the contract's scope without steward approval
- Treat success signals as hypotheses, not fixed targets — propose better ones
- Boundaries are hard constraints; everything else evolves
- The agent proposes, the steward decides

## Tests

- `tests/check_contract.sh` — is the contract complete enough to operate?
- `tests/check_boundaries.sh` — does the repo state respect boundaries?
