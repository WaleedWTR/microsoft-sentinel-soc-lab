# Investigation Example: Failed Sign-ins Followed by Success

## Trigger

Multiple failed sign-ins from the same IP address are followed by a successful authentication for the same user.

## Investigation steps

- confirm exact failure and success timestamps
- review source IP and geography
- compare device/browser/client details
- inspect Conditional Access results
- review sign-in risk
- check whether the user recently changed password
- search for similar activity against other accounts
- check for subsequent privileged or unusual activity

## Possible benign explanations

- stale credentials
- mobile client retry behaviour
- password recently changed
- legitimate travel / VPN
- misconfigured application

## Possible malicious explanations

- password spraying
- credential stuffing
- successful account takeover

## Evidence standard

The final verdict should separate observed facts, contextual assumptions and unresolved questions.
