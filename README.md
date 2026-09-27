# Microsoft Sentinel SOC Lab

![Bicep validation](https://github.com/WaleedWTR/microsoft-sentinel-soc-lab/actions/workflows/bicep-validate.yml/badge.svg)

A portfolio SOC engineering lab built around Microsoft Sentinel, Log Analytics, KQL hunting, detection engineering and incident response.

> **Portfolio note:** This is a sanitised lab/reconstruction using synthetic data. It contains no employer, government, tenant or production information.

## What this project demonstrates

- provisioning a Log Analytics workspace and Sentinel onboarding with Bicep
- writing KQL hunting queries for identity and endpoint activity
- converting hunting ideas into documented detection candidates
- mapping triage steps into repeatable incident playbooks
- using synthetic telemetry for safe demonstrations
- treating detections as operational products, not just queries

## Architecture

```text
Identity / Endpoint / Azure Telemetry
                |
                v
        Log Analytics Workspace
                |
                v
         Microsoft Sentinel
          /      |       \
         /       |        \
   Hunting   Analytics   Workbooks
      |         Rules        |
      +----------+-----------+
                 |
                 v
           SOC Incident
                 |
                 v
        Triage -> Contain -> Recover
```

## Repository structure

```text
.
├── .github/workflows/
├── data/
├── detections/
├── docs/
├── infrastructure/
└── kql/
```

## Quick start

Build the Bicep locally:

```bash
az bicep build --file infrastructure/main.bicep
```

Deploy to a lab resource group:

```bash
az deployment group create \
  --resource-group <lab-rg> \
  --template-file infrastructure/main.bicep \
  --parameters workspaceName=<unique-workspace-name>
```

Then load the KQL examples in `kql/` into the appropriate Sentinel/Log Analytics environment and adapt table names to the connected data sources.

## Detection catalogue

The project currently covers example patterns for:

- repeated failed sign-ins followed by success
- suspicious sign-in volume
- rare countries / locations
- encoded PowerShell indicators
- suspicious process chains
- administrative tooling from unexpected endpoints

See [Detection Catalogue](detections/detection-catalogue.md).

## Incident response

The [SOC Incident Playbook](docs/incident-playbook.md) provides a repeatable investigation structure covering validation, scoping, containment, evidence and recovery.

## Key evidence and documentation

- [Detection catalogue](detections/detection-catalogue.md)
- [MITRE ATT&CK mapping](detections/mitre-attack-mapping.md)
- [PowerShell investigation example](investigations/powershell-investigation.md)
- [Failed sign-in investigation example](investigations/failed-signins-investigation.md)
- [SOC incident playbook](docs/incident-playbook.md)
- [Automation / triage playbook concept](automation/triage-playbook.md)
- [Technical references](docs/references.md)

## Skills demonstrated

**Microsoft Sentinel · KQL · Log Analytics · Bicep · Detection Engineering · Threat Hunting · Incident Response · Azure Security**

## Provenance

This repository is a public portfolio lab. Any professional experience reflected in the design has been rebuilt with representative architecture and synthetic data. No confidential operational material is included.
