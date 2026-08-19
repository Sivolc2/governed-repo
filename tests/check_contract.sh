#!/usr/bin/env bash
# Governance contract compliance checker
# Parses CONTRACT.md and verifies all required fields are filled in.
# Exit code 0 = compliant, non-zero = violations found.

set -euo pipefail

CONTRACT="$(dirname "$0")/../governance/CONTRACT.md"
FAILURES=0

fail() {
  echo "FAIL: $1"
  FAILURES=$((FAILURES + 1))
}

pass() {
  echo "PASS: $1"
}

# --- Check contract exists ---
if [[ ! -f "$CONTRACT" ]]; then
  echo "FATAL: governance/CONTRACT.md not found"
  exit 2
fi

# --- Check no blank template fields remain ---
BLANKS=$(grep -c '___' "$CONTRACT" 2>/dev/null || true)
if [[ "$BLANKS" -gt 0 ]]; then
  fail "Contract has $BLANKS unfilled template fields (___)"
else
  pass "All template fields filled"
fi

# --- Check required sections exist ---
for section in "Identity" "Scope" "Boundaries" "Decision Rights" "Success Metrics" "Reporting" "Amendment Process"; do
  if grep -q "## [0-9]*\. $section" "$CONTRACT"; then
    pass "Section '$section' present"
  else
    fail "Missing required section: $section"
  fi
done

# --- Check at least one success metric is defined ---
# A filled metric row has a pipe-delimited row that doesn't contain ___
METRIC_ROWS=$(awk '/## 5\. Success Metrics/,/## 6\./' "$CONTRACT" \
  | grep '^|' | grep -v '^\| Metric' | grep -v '^\|---' | grep -vc '___' 2>/dev/null || true)
if [[ "$METRIC_ROWS" -gt 0 ]]; then
  pass "At least one success metric defined ($METRIC_ROWS)"
else
  fail "No success metrics defined in section 5"
fi

# --- Check contract version is set ---
if grep -qP 'Contract version.*\| `[0-9]+\.[0-9]+\.[0-9]+`' "$CONTRACT"; then
  pass "Contract version set"
else
  fail "Contract version not set or malformed"
fi

# --- Summary ---
echo ""
echo "================================"
if [[ "$FAILURES" -eq 0 ]]; then
  echo "ALL CHECKS PASSED"
  exit 0
else
  echo "$FAILURES CHECK(S) FAILED"
  exit 1
fi
