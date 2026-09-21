# SteadyMark Content & Object Model v1.0

## Governing rule

> Pages present the business. Objects describe the business. Presentation may change without changing the underlying truth.

## Business

One authoritative Business object feeds header, footer, metadata, structured data, contact surfaces, and Request Work.

Canonical values:

- name: SteadyMark Property Services
- domain: steadymarkservices.com
- email: service@steadymarkservices.com
- phone_display: (210) 710-4309
- phone_tel: +12107104309
- founder: Robert
- service_geography: configurable / unresolved until operationally confirmed
- primary_cta: Request Work
- legal_entity: unresolved
- insurance: factual record only when confirmed

## ServiceLine

Canonical records:

- `make-readies-turns`
- `maintenance-property-support`
- `repairs-punch-work`
- `recurring-contract-support`

Suggested states: `active`, `limited`, `inactive`.

Each may own orientation copy, recognition conditions, capabilities, Representative Scopes, imagery, boundary language, route, metadata, and Request Work context.

## Capability

A smaller example of work that may occur within one or more Service Lines. Capabilities are subordinate and do not automatically receive a page, navigation item, price, availability promise, or independent marketing claim.

## RepresentativeScope

Canonical launch records:

- `vacant-unit-turn`
- `rental-maintenance-visit`
- `multi-item-punch-scope`
- `single-residential-repair`
- `recurring-multi-property-support`

Semantic contract: **Condition → Typical Scope → Next Step**.

Representative Scopes may not contain invented customer names, addresses, dates, testimonials, invoices, or historical claims.

## Person

Launch Person object: **Robert — Founder**. It may hold public role, biography, accountability statement, visibility, and related image assets.

Temporary scope-matched contributors do not automatically become public Person objects.

## TrustEvidence

Structured factual evidence such as confirmed insurance, registrations, legitimate associations, verified review sources, or operational qualifications.

Suggested states: `current`, `expired`, `pending`, `hidden`.

Expired evidence must not remain public because it was copied into static page text.

## ServiceGeography

Separate from ServiceLine. Supports primary area, included cities/regions, extended areas, public summary, and internal qualification notes.

## WorkRequest

Primary transactional object. Core families:

- identity: request ID, creation time
- contact: name, phone, email, preferred contact
- context: request type, originating Service Line / Scope
- property: location/area, property type/context, occupied/vacant where relevant
- need: free-text description
- timing: desired timing / target date
- scope: list/number of items/units where relevant
- attachments: private references
- internal: request state, notes/reference identifiers

Canonical request contexts:

- repair/smaller job
- make-ready/unit turn
- multi-item/punch scope
- recurring/multi-property support
- not sure

Desired timing is not a scheduled date.

## WorkRequest states

**Received → Under Review → Needs Clarification / Scope Conversation → Accepted / Not a Fit → Closed**

V1 does not require a public customer portal.

## FeaturedPlacement

Featured status is presentation context, not global importance. It records surface, slot, referenced object, order, enabled state, and optional variant.

## MediaAsset

Fields should include asset ID, source/path, media type, provenance, role, related objects, focal area, alt guidance, responsive behavior, replacement priority, publication status, and lineage.

Canonical provenance values:

- real
- reference-derived
- synthetic-representative
- design-reference
- documentary-project (future specific job evidence)

## ProjectRecord — reserved

Future documentary object. Minimum truth model:

**Observed Condition → Accepted Scope → Work Performed → Resulting Condition**

Must use real documentary evidence and pass privacy review before publication.

## Relationships

The model is a small graph beneath a simple website. A Capability may relate to multiple Service Lines. A Representative Scope has one primary relationship but may be relevant elsewhere. A MediaAsset may support several contexts. A WorkRequest may originate from different site surfaces.

## Storage

Public canonical content can live in typed structured files (TypeScript/JSON/YAML/content collections). A database is not required for public content. Private WorkRequest storage is separate.

## Validation

Build validation should enforce unique IDs/routes, defined enum states, valid references, existing production assets, and separation between RepresentativeScope and ProjectRecord semantics.

## Explicit non-objects

Do not model every trade, every handyman task, fake testimonials, pricing plans, employee headcount, fake metrics, availability schedules, blog categories, promotions, or property-management services SteadyMark does not provide.
