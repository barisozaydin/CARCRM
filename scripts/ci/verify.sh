#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "AGENT_RULES.md"
  "README.md"
  ".github/CODEOWNERS"
  ".github/pull_request_template.md"
  "docs/workflows/REQUEST_FLOW.md"
  "docs/merge/MERGE_POLICY.md"
  "docs/testing/TEST_AUTOMATION.md"
  "docs/testing/STACK_TOOLING.md"
  "docs/testing/COVERAGE_POLICY.md"
  "scripts/ci/lint.sh"
  "scripts/test/run.sh"
  "scripts/test/coverage.sh"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
done

echo "Policy files verified."
