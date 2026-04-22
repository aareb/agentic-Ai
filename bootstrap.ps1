Write-Host "Bootstrapping Agentic Platform repo..."

New-Item -ItemType Directory -Force ui/src/pages, ui/src/api | Out-Null
New-Item -ItemType Directory -Force backend/app/api | Out-Null
New-Item -ItemType Directory -Force backend/app/agents | Out-Null
New-Item -ItemType Directory -Force terraform | Out-Null
New-Item -ItemType Directory -Force deploy/k8s | Out-Null
New-Item -ItemType Directory -Force docs | Out-Null
New-Item -ItemType Directory -Force .github/workflows | Out-Null

Set-Content README.md @"
# Agentic Platform – Autonomous DevSecOps

Production‑ready agentic AI platform with approvals, FinOps,
Terraform, Dynatrace, and ServiceNow integrations.
"@

Set-Content docs/demo-guide.md @"
# Demo Guide
This guide explains how to safely demonstrate the platform.
"@

Write-Host "✅ Repo bootstrapped successfully"
``