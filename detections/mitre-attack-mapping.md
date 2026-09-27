# MITRE ATT&CK Mapping

This mapping is illustrative and intended to show how detections can be tied to attacker behaviours during engineering and review.

| Detection / Behaviour | ATT&CK Technique | Notes |
| --- | --- | --- |
| Repeated failed sign-ins | T1110 - Brute Force | Useful for password spraying / credential guessing patterns |
| Encoded PowerShell | T1059.001 - PowerShell | Command and scripting interpreter activity |
| Office spawning PowerShell | T1204.002 - Malicious File / T1059.001 | User execution followed by script interpreter activity |
| Suspicious administrative tooling | T1569 / T1059 family depending on context | Requires process and intent analysis |
| Sensitive-path probing | T1595 / T1046 style discovery depending on source/context | Treat mapping as contextual, not automatic |

## Mapping principle

ATT&CK mapping should describe observed behaviour, not substitute for investigation. The same executable or command can be legitimate in one context and malicious in another.
