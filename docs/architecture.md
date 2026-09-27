# Architecture

## Design goals

The lab is intentionally small enough to reproduce while still showing the core SOC engineering flow.

```text
+-------------------+      +-------------------+
| Entra sign-in data|      | Defender endpoint |
+---------+---------+      +---------+---------+
          |                          |
          +------------+-------------+
                       |
                       v
             +-------------------+
             | Log Analytics     |
             | Workspace         |
             +---------+---------+
                       |
                       v
             +-------------------+
             | Microsoft Sentinel|
             +----+----------+---+
                  |          |
              Hunting     Detections
                  |          |
                  +-----+----+
                        |
                        v
                 Incident Queue
                        |
                        v
                 Response Playbook
```

## Security considerations

- use least-privilege RBAC
- keep lab data synthetic where possible
- avoid committing workspace IDs, tenant IDs or secrets
- use managed identities for automation where supported
- validate retention and cost settings before deployment
- review public-network settings for real environments
- treat detection content as version-controlled code
