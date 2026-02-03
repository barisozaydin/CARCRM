#!/usr/bin/env bash
set -euo pipefail

ran=false

if [[ -f package.json ]]; then
  if grep -q '"lint"' package.json; then
    echo "Running npm lint..."
    npm run lint
    ran=true
  fi
fi

if [[ -f pom.xml ]]; then
  echo "Running Maven checkstyle (if configured)..."
  mvn -q -DskipTests checkstyle:check || true
  ran=true
fi

if [[ -f build.gradle || -f build.gradle.kts ]]; then
  echo "Running Gradle lint (if configured)..."
  ./gradlew -q ktlintCheck || true
  ran=true
fi

if [[ -f go.mod ]]; then
  if command -v golangci-lint >/dev/null 2>&1; then
    echo "Running golangci-lint..."
    golangci-lint run
    ran=true
  fi
fi

if [[ -f pyproject.toml || -f setup.cfg || -f requirements.txt ]]; then
  if command -v ruff >/dev/null 2>&1; then
    echo "Running ruff..."
    ruff check .
    ran=true
  fi
fi

if [[ "$ran" = false ]]; then
  echo "No lint configuration detected. Add stack lint config per docs/testing/STACK_TOOLING.md" >&2
  exit 1
fi
