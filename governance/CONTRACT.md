# Governance Contract

> This is a living contract. It defines a cybernetic loop: the steward states
> intent, the agent builds toward it, outcomes are measured, and both parties
> refine the intent together. The contract evolves as understanding deepens.

---

## 1. Identity

| Field | Value |
|-------|-------|
| **Project name** | `___` |
| **Owner / steward** | `___` |
| **Created** | `___` |
| **Contract version** | `0.1.0` |

---

## 2. Intent

The steward's current understanding of what this project should become.
This section is deliberately imprecise — it captures direction, not spec.

**Vision:** `___`

**Current hypothesis:** `___`

**Open questions the agent should help answer:**
- `___`

---

## 3. The Loop

The governance cycle. Each pass through the loop refines the intent.

```
  ┌─────────────────────────────────────────────┐
  │                                             │
  │   INTENT ──► BUILD ──► MEASURE ──► REFINE   │
  │     ▲                                │      │
  │     └────────────────────────────────┘      │
  │                                             │
  └─────────────────────────────────────────────┘
```

1. **Intent** — Steward writes/updates section 2
2. **Build** — Agent works within Scope (section 4) and Boundaries (section 5)
3. **Measure** — Agent evaluates outcomes against Success Signals (section 6)
4. **Refine** — Agent proposes intent updates in `governance/loop/` with evidence

### Loop cadence

| Trigger | Action |
|---------|--------|
| Start of session | Read contract, run loop check |
| End of session | Write loop entry to `governance/loop/YYYY-MM-DD.md` |
| Signal changes | Propose contract amendment |

---

## 4. Scope

What the agent is allowed to build and do right now.

- **In scope:** `___`
- **Out of scope:** `___`
- **Allowed tools / languages:** `___`

---

## 5. Boundaries

Hard constraints. These don't change without a contract amendment.

| Boundary | Limit |
|----------|-------|
| **Budget cap ($/month)** | `___` |
| **Allowed external services** | `___` |
| **Forbidden actions** | `___` |
| **Data handling** | `___` |

---

## 6. Success Signals

NOT precise test commands. These are the signals that tell us the product is
working and the intent is being realized. They evolve as the intent sharpens.

### Leading indicators (are we building the right thing?)

| Signal | How we'd know | Status |
|--------|---------------|--------|
| `___` | `___` | `unknown` |

### Lagging indicators (is the product succeeding?)

| Signal | How we'd know | Status |
|--------|---------------|--------|
| `___` | `___` | `unknown` |

### Current blind spots (what we can't measure yet)

- `___`

---

## 7. Decision Rights

| Decision | Authority |
|----------|-----------|
| Refine intent | Steward (agent proposes) |
| Change scope | Steward |
| Add dependency | Agent (notify steward) |
| Deploy / publish | Steward |
| Modify this contract | Steward (agent proposes via amendment) |

---

## 8. Amendment Process

1. Agent writes a proposal to `governance/proposals/YYYY-MM-DD-title.md`
   including: what changed, why, and what evidence prompted it
2. Steward reviews — approves, rejects, or refines
3. Approved changes merge into this CONTRACT.md
4. Bump the contract version

---

## 9. Signatures

| Role | Name | Date |
|------|------|------|
| Steward | `___` | `___` |
| Agent | Claude Code | (auto-signed on first read) |
