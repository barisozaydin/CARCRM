#!/usr/bin/env bash
set -euo pipefail

ran=false

if [[ -f package.json ]]; then
  if grep -q '"test:coverage"' package.json; then
    echo "Running npm coverage..."
    npm run test:coverage
    ran=true
  fi
fi

if [[ -f pom.xml ]]; then
  echo "Running Maven coverage (JaCoCo)..."
  mvn -q test jacoco:report
  ran=true
fi

if [[ -f build.gradle || -f build.gradle.kts ]]; then
  echo "Running Gradle coverage..."
  ./gradlew -q jacocoTestReport
  ran=true
fi

if [[ -f go.mod ]]; then
  echo "Running Go coverage..."
  go test ./... -cover
  ran=true
fi

if [[ -f pyproject.toml || -f setup.cfg || -f requirements.txt ]]; then
  if command -v coverage >/dev/null 2>&1; then
    echo "Running coverage..."
    coverage run -m pytest
    coverage report
    ran=true
  fi
fi

if [[ "$ran" = false ]]; then
  echo "No coverage configuration detected. Configure coverage per docs/testing/STACK_TOOLING.md" >&2
  exit 1
fi
