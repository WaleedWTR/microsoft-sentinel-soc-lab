# Detection Catalogue

These detections are examples for a portfolio lab. Thresholds must be baselined and tuned before production use.

| Detection | Data source | Purpose | Example severity | ATT&CK area |
| --- | --- | --- | --- | --- |
| Failed sign-ins followed by success | SigninLogs | Identify possible password spraying / credential abuse | Medium | Credential Access |
| High failure volume by IP | SigninLogs | Identify broad authentication attacks | Medium | Credential Access |
| Encoded PowerShell | DeviceProcessEvents | Surface obfuscated PowerShell execution | Medium | Execution |
| Office spawning shell | DeviceProcessEvents | Surface suspicious child processes from Office | High | Execution |
| Unusual admin tooling | DeviceProcessEvents | Identify potentially risky administrative utilities | Medium | Execution / Defense Evasion |

## Detection lifecycle

1. Define the behaviour and required telemetry.
2. Write a hunting query.
3. Test against representative benign and suspicious activity.
4. Establish normal baselines.
5. Tune exclusions and thresholds.
6. Assign severity, ownership and response guidance.
7. Promote to analytics/alerting only when useful.
8. Measure false positives and review after environmental change.
