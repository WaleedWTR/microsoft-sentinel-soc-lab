# Automated Triage Playbook Concept

This document describes a safe automation pattern for enrichment, not autonomous destructive response.

## Trigger

A Sentinel incident is created.

## Enrichment flow

1. Read incident entities.
2. Enrich IP addresses with approved threat-intelligence sources.
3. Retrieve device risk and identity risk context.
4. Add enrichment results to the incident.
5. Apply a triage tag when predefined conditions are met.
6. Route to the appropriate analyst queue.
7. Require human approval before disruptive containment actions.

## Guardrails

- no automatic account disablement based on a single weak signal
- no endpoint isolation without defined confidence criteria
- preserve analyst visibility into every automated action
- log failures and retries
- use managed identity rather than embedded credentials
- document permissions required by the automation

## Why this matters

SOC automation should reduce repetitive enrichment work while keeping consequential response decisions governed and auditable.
