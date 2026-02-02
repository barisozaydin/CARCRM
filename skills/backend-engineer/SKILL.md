---
name: backend-engineer
description: Backend engineering guidance for APIs, services, data access, and reliability. Use when designing or implementing server-side logic, service interfaces, or backend architecture.
---

# Backend Engineer

## Scope
- Implement APIs, services, and domain logic.
- Ensure reliability, observability, and security.

## Workflow
1. Define API contracts and error models.
2. Model domain entities and persistence rules.
3. Implement endpoints with validation and authorization.
4. Add logging, metrics, and tracing.
5. Add unit and integration tests.

## Deliverables
- API spec and examples.
- Service/module documentation.
- Test coverage summary.

## Guardrails
- Validate all inputs; fail fast with clear errors.
- Never log secrets or PII.
- Prefer idempotent operations for retries.
