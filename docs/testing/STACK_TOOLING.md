# Stack Bazlı Test/Lint/Coverage Araçları

Bu doküman "stack'e göre" ifadesini netleştirir. Her teknoloji yığınının test, lint ve
coverage araçları farklıdır; bu nedenle CI, projede kullanılan stack'e göre uygun
araçları çalıştırır.

## Frontend (React + TypeScript)
- **Test**: Jest + React Testing Library
- **Lint**: ESLint + TypeScript ESLint
- **Format**: Prettier
- **Coverage**: Jest coverage (lcov)

## Backend (Node.js + TypeScript)
- **Test**: Jest
- **Lint**: ESLint
- **Format**: Prettier
- **Coverage**: Jest coverage

## Backend (Java/Kotlin)
- **Test**: JUnit 5
- **Lint/Style**: Checkstyle / ktlint
- **Coverage**: JaCoCo

## Backend (Go)
- **Test**: go test
- **Lint**: golangci-lint
- **Coverage**: go test -cover

## Python (CLI/Servis)
- **Test**: pytest
- **Lint**: ruff / flake8
- **Coverage**: coverage.py

## Entegrasyon
CI, repo kökünde ilgili yapılandırmaları (örn. package.json, build.gradle, go.mod) tespit
ederek uygun test/lint/coverage komutlarını çalıştırır.
