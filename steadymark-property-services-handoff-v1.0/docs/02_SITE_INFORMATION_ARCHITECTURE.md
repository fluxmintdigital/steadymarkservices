# SteadyMark Site & Information Architecture v1.0

## Governing rule

> The site should expose enough structure for visitors to recognize their property need without making them learn SteadyMark’s internal operating model first.

## Canonical public routes

- `/` — Home
- `/services/` — What SteadyMark Helps With
- `/services/make-readies-turns/`
- `/services/maintenance-property-support/`
- `/services/repairs-punch-work/`
- `/services/recurring-contract-support/`
- `/about/`
- `/request-work/`
- `/request-work/received/` — utility / noindex
- `/privacy/`
- framework-standard 404

The four primary public surfaces remain Home, Services, About, and Request Work. Service Line routes are subordinate depth.

## Primary navigation

Desktop and mobile navigation expose:

- canonical STEADYMARK wordmark → Home
- Services
- About
- Request Work

Request Work receives the strongest action treatment. Home is available through the wordmark; no separate Home link is required.

## Services behavior

The navigation label is **Services**. The page heading may be **What SteadyMark Helps With**. No mega-menu is needed in V1.

## Home sequence

**Hero → What SteadyMark Helps With → Coordination advantage → Representative property situations → Robert/accountability bridge → Recurring relationship signal → How it works → Final Request Work CTA**

## Services overview sequence

**Orientation → Four Service Lines → Representative Scopes → Fit / boundaries → Request Work**

## Shared Service Line contract

Each Service Line page contains:

- Service identity
- Recognition language
- Typical scope
- Representative Scope(s)
- Coordination explanation where relevant
- Boundary / fit language
- Contextual Request Work action

## Canonical Service Lines

### Make-Readies & Turns
Governing question: What needs to happen before this property is ready again?

### Maintenance & Property Support
Governing question: What needs attention to keep this property functioning well?

### Repairs & Punch Work
Governing question: What defined corrections need to be completed?

### Recurring & Contract Support
Governing question: What repeated property needs would benefit from one continuing relationship?

Overlap is acceptable. The taxonomy exists to help recognition and intake, not to constrain operations.

## Representative Scopes

Representative Scopes are reusable content objects, not root pages in V1.

- `RS-01` Vacant Unit Turn → Make-Readies & Turns
- `RS-02` Rental Maintenance Visit → Maintenance & Property Support
- `RS-03` Multi-Item Punch Scope → Repairs & Punch Work
- `RS-04` Single Residential Repair → Repairs & Punch Work / Maintenance
- `RS-05` Recurring Multi-Property Support → Recurring & Contract Support

Semantic grammar: **Condition → Typical Scope → Next Step**.

## About

Sequence:

**Why SteadyMark exists → Robert → How capacity works → Accountability → Who SteadyMark supports → Trust facts → Request Work**

## Request Work

Request Work is a functional surface. Entry choices:

- Repair or smaller job
- Make-ready / unit turn
- Multi-item / punch scope
- Recurring / multi-property support
- Not sure

Context passed from a Service Line or Representative Scope may preselect an option, but the visitor remains free to change it.

## Cross-page movement

Prefer meaningful transitions such as:

- See What SteadyMark Helps With
- Request Similar Work
- About SteadyMark
- Tell Us What the Property Needs

Avoid generic repeated “Learn More” links.

## Footer

Footer contains:

- canonical identity
- Service Line links
- About
- Request Work
- canonical phone/email
- accurate service-area context once confirmed
- Privacy

Do not turn the footer into a second full sitemap.

## Breadcrumbs

Useful on Service Line pages, e.g. `Home → Services → Make-Readies & Turns`. Not required on Home, About, or Request Work.

## URL rules

Human-readable, stable, lowercase, hyphenated, descriptive. Do not encode transient slogans into URLs.

## Search

No on-site search is required in V1.

## Project Records

Reserved future architecture only. Do not create an empty public `/work/`, `/projects/`, or Project Records surface simply to imply maturity.

## Geographic architecture

Do not generate thin city/ZIP pages. Geography-specific surfaces should emerge only when real operational or documentary content justifies them.

## Semantic sitemap

```text
steadymarkservices.com
│
├── /
├── /services/
│   ├── /make-readies-turns/
│   ├── /maintenance-property-support/
│   ├── /repairs-punch-work/
│   └── /recurring-contract-support/
├── /about/
├── /request-work/
│   └── /received/ [noindex]
└── /privacy/
```
