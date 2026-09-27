# Investigation Example: Encoded PowerShell

## Trigger

A hunting query identifies PowerShell launched with an encoded-command parameter.

## Evidence reviewed

- initiating process
- full command line
- user context
- device
- timestamp
- related network activity
- child processes
- file writes
- similar executions elsewhere

## Analyst reasoning

Encoded PowerShell is not automatically malicious. The investigation should determine:

1. whether the parent process is expected
2. whether the user/device normally executes the command
3. whether the decoded content performs suspicious actions
4. whether the process contacted unusual infrastructure
5. whether the activity exists on other endpoints

## Example outcome

For this synthetic scenario, an Office process spawning encoded PowerShell alongside unusual network activity would justify escalation and containment review.

## Improvement action

If this pattern proved useful and sufficiently low-noise, the hunting query could be promoted into an analytics rule after tuning and validation.
