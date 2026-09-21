# SteadyMark Property Services — Canonical Handoff Package v1.0

Date: 2026-09-20

This ZIP is the consolidated architecture, design, asset, and implementation handoff for `steadymarkservices.com`.

## Start here

1. Read `docs/00_OFA_CANONICAL_RECONCILIATION.md`.
2. Read the canonical documents in numerical order.
3. Treat `docs/11_CODEX_IMPLEMENTATION_DIRECTIVE.md` as the implementation handoff.
4. Use `config/` as machine-readable canonical baseline/configuration.
5. Use `manifests/asset-manifest.json` to understand asset identity/provenance.
6. Use only assets under production/brand/photography paths for the build. `assets/references/` is non-authoritative visual history/composition guidance and must not be imported directly into production pages.

## Authority order

1. Web Constitution
2. Site & Information Architecture
3. Page Contracts
4. Content & Object Model
5. Request Work & Interaction Contract
6. Visual System Specification
7. Responsive / Accessibility / Performance Contract
8. Trust / SEO / Local Discovery Contract
9. Asset & Photography Architecture
10. Canonical production assets
11. Approved composition references
12. Generated specimen details

## Critical production boundary

Synthetic representative imagery may illustrate capability/service context, but it must never be presented as documentary evidence of a specific completed SteadyMark job. Future Project Records require real documentary evidence.

## Operational facts still requiring explicit confirmation

See `config/operational-tbd.json`. Do not invent these values during implementation.

## Folder map

- `docs/` — canonical human-readable contracts
- `config/` — structured business/routes/tokens/TBD configuration
- `assets/brand/` — canonical identity masters, delivery files, identity reference
- `assets/photography/` — approved production/reference photography
- `assets/references/` — composition/history only; **DO NOT IMPORT DIRECTLY**
- `assets/social/` — implementation-derived social asset location
- `manifests/` — asset and package manifests
- `implementation/` — Codex handoff helpers and launch TODO
- `source-archives/` — original locked asset ZIPs preserved unchanged
