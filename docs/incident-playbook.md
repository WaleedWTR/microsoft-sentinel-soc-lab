# SOC Incident Playbook

## 1. Validate

- confirm the alert source and time window
- inspect the triggering events
- identify user, device, IP and affected resources
- check whether activity matches known administration or testing

## 2. Scope

- search for related sign-ins
- review endpoint process and network telemetry
- identify additional users or devices
- determine first and last observed activity
- assess whether privileged identities are involved

## 3. Assess impact

Record:

- affected identity / endpoint
- data or services potentially accessed
- persistence indicators
- lateral movement indicators
- business/service impact

## 4. Containment

Examples, subject to organisational procedure:

- revoke sessions
- disable or reset a compromised account
- isolate a confirmed compromised endpoint
- block confirmed malicious indicators
- preserve evidence before destructive action

## 5. Eradication and recovery

- remove persistence
- remediate vulnerable configuration
- restore affected assets
- validate account/device health
- increase monitoring during recovery

## 6. Close and improve

- record root cause and timeline
- capture detection gaps
- tune noisy rules
- create follow-up actions
- update runbooks and lessons learned
