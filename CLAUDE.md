# CLAUDE.md — Governed Repo

This repo is governed by a contract. You MUST follow these rules.

## Prime Directive

Before doing ANY work, read `governance/CONTRACT.md` in full. Every action you
take must comply with the contract's Scope, Boundaries, and Decision Rights.

## Workflow

1. **Start of session:** Run `bash tests/check_contract.sh` — if it fails, the
   contract is incomplete. Help the steward fill it in before doing other work.
2. **Before writing code:** Verify your planned work falls within the contract's
   Scope (section 2). If it doesn't, stop and ask the steward.
3. **After writing code:** Run `bash tests/check_boundaries.sh` to verify you
   haven't violated any boundaries.
4. **End of session:** Produce a session report as defined in the contract's
   Reporting section (section 6).

## What you cannot do without steward approval

- Anything listed as "Out of scope" in the contract
- Adding dependencies not covered by "Allowed languages / frameworks"
- Any action listed under "Forbidden actions"
- Modifying the governance contract itself (use the Amendment Process)

## Tests

- `tests/check_contract.sh` — validates the contract is complete and well-formed
- `tests/check_boundaries.sh` — validates repo state against contract boundaries

Both must pass. Treat failures as blockers.
