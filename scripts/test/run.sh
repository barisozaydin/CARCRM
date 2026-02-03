#!/usr/bin/env bash
set -euo pipefail

ran=false

echo "Running test automation entrypoint..."

if [[ -f package.json ]]; then
  if grep -q '"test"' package.json; then
    echo "Running npm test..."
    npm test
    ran=true
  fi
fi

if [[ -f pom.xml ]]; then
  echo "Running Maven tests..."
  mvn -q test
  ran=true
fi

if [[ -f build.gradle || -f build.gradle.kts ]]; then
  echo "Running Gradle tests..."
  ./gradlew -q test
  ran=true
fi

if [[ -f go.mod ]]; then
  echo "Running Go tests..."
  go test ./...
  ran=true
fi

if [[ -f pyproject.toml || -f setup.cfg || -f requirements.txt ]]; then
  if command -v pytest >/dev/null 2>&1; then
    echo "Running pytest..."
    pytest
    ran=true
  fi
fi

if [[ "$ran" = false ]]; then
  echo "No test runner detected. Configure tests per docs/testing/STACK_TOOLING.md" >&2
  exit 1
fi
