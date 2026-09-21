# SteadyMark Codex Implementation Directive v1.0

## Governing rule

> Codex implements the established system. It does not reopen design discovery, invent business facts, or infer authority from generated mockups when canonical rules already exist.

## Objective

Build `steadymarkservices.com` as a fast, accessible, responsive property-services website centered on Home, Services, About, and Request Work, with four subordinate Service Line routes.

The finished site communicates:

**what SteadyMark is → what property needs fit → how accountability works → what the visitor should do next**

It is not a generic handyman template, SaaS marketing site, fake portfolio, or property-management company website.

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
11. Approved visual specimens
12. Generated specimen text/details

## DO NOT INVENT

Codex must not invent or infer:

- exact service geography
- insurance coverage/wording
- bonding/license status
- legal entity name
- years in business
- employee count
- project/review counts
- testimonials/customer names
- project addresses/dates
- business hours
- response guarantees
- pricing/minimum charges
- estimate policy
- contract tiers
- scheduling availability
- warranty terms
- regulated trade capabilities
- unapproved service-area cities
- fake project history
- fake before/after stories

Unknown facts remain explicit configuration values.

## Canonical business data

- Business: SteadyMark Property Services
- Domain: steadymarkservices.com
- Email: service@steadymarkservices.com
- Phone display: (210) 710-4309
- Telephone URI: +12107104309
- Founder: Robert

Use one authoritative Business object.

## Recommended architecture

**Static/server-rendered public site + small progressive-enhancement layer + secure server-side Request Work endpoint + private request storage/notification adapter**.

A database is not required for public content.

## Routes

Implement:

- `/`
- `/services/`
- `/services/make-readies-turns/`
- `/services/maintenance-property-support/`
- `/services/repairs-punch-work/`
- `/services/recurring-contract-support/`
- `/about/`
- `/request-work/`
- `/request-work/received/`
- `/privacy/`

No empty `/work/`, `/projects/`, `/gallery/`, blog, root FAQ, thin city pages, individual Capability pages, or Representative Scope routes at launch.

## Content models

Create typed schemas/models for Business, ServiceLine, Capability, RepresentativeScope, Person, TrustEvidence, ServiceGeography, MediaAsset, FeaturedPlacement, and WorkRequest. Reserve ProjectRecord but do not activate publicly.

## Operational configuration

Keep unresolved facts centralized, e.g.:

```text
serviceGeography: UNRESOLVED
insuranceStatement: UNRESOLVED
legalEntity: UNRESOLVED
businessHours: UNRESOLVED
attachmentLimits: UNRESOLVED
requestStorageProvider: UNRESOLVED
requestNotificationProvider: UNRESOLVED
```

Production validation should identify required unresolved values.

## Components

Prefer meaningful domain components such as SiteHeader, SiteFooter, PrimaryNavigation, PageHero, ServiceLineFeature, RepresentativeScope, FounderAccountability, RequestWorkForm, RequestTypeSelector, AttachmentField, FormErrorSummary, ResponsiveImage, and CTA variants. Do not build an abstract component universe before real reuse exists.

## Home

Order:

Header → Hero → What SteadyMark Helps With → Coordination Advantage → Representative Scopes → Robert/Accountability → Recurring Support → How It Works → Final Request Work CTA → Footer.

Do not add testimonials, ratings, stats, pricing, logo clouds, fake galleries, or blog previews.

## Services

Use public heading **What SteadyMark Helps With**. Render four substantial Service Line sections, all five Representative Scopes, fit/boundary language, and Request Work.

## Service Line pages

Shared semantic template: service identity, recognition conditions, typical scope, capabilities, Representative Scope, coordination explanation where applicable, boundary/fit note, contextual Request Work CTA.

## About

Why SteadyMark exists → Robert → field capacity → accountability → supported audiences → confirmed trust facts → Request Work. Do not invent a team or claim Robert personally performs every task.

## Request Work

Initial contexts:

- Repair or smaller job
- Make-ready / unit turn
- Multi-item / punch scope
- Recurring / multi-property support
- Not sure

Do not use AI classification, fake chat, online booking, or instant-quote semantics.

## WorkRequest

Support ID, timestamp, context/origin, contact, property context/location, occupancy where useful, description, desired timing, portfolio context/count where relevant, private attachments, and state.

Context values passed from query params must be whitelisted. Unknown values fall back safely.

## Submission

Only redirect to `/request-work/received/` after authoritative persistence succeeds. Notification and storage are separate operations. Notification failure must not lose a stored request.

## Uploads

Private, non-executable, server-validated, size/type limited, non-guessable storage keys, outside public static assets. Never place filenames or contents into analytics.

## Anti-spam

Start with honeypot, origin/CSRF controls as appropriate, server rate limits, sanity limits, and idempotency. No CAPTCHA or AI classifier by default.

## Analytics

Allowed aggregate events may include CTA clicks, Service Line views, request start/type/submission/failure, and phone/email clicks. Never transmit form PII or request payloads.

## Visual tokens

- `--sm-surface: #F4EFEA`
- `--sm-graphite: #2E2E2E`
- `--sm-clay: #B2553C`
- `--sm-stone: #C9C2B8`
- `--sm-steel: #8A9399`

Manrope only for communication typography. Use canonical SVG identity masters; never recreate the wordmark in text/CSS.

## Styling

Favor warm working surfaces, Graphite structure, restrained Clay accents, whitespace, precise rules, editorial image/text relationships, minimal radii, and minimal shadows. No gradients, glassmorphism, giant rounded cards, luxury gold, contractor blue, blueprint textures, hazard stripes, or decorative tool motifs.

## Registration mark

Use `SM-ID-03` only for meaningful reference/connection/completion relationships. Not universal bullet/checkmark/wallpaper.

## Assets

Keep production media, brand masters, generated delivery assets, design references, documentary media, and private customer uploads separate. Use MediaAsset metadata including provenance/evidence state/focal point/alt guidance.

## Responsive/mobile

Mobile is authored rather than collapsed. Minimum 16 px body, usable around 320 CSS px, no horizontal scroll, ~44 px interactive targets, no obstructive sticky CTA, no miniature desktop navigation.

## Accessibility

Target WCAG 2.2 AA. Semantic landmarks, one H1, skip link, keyboard operation, visible focus, persistent labels, associated errors, contrast, reduced-motion handling, meaningful alt behavior, and proper link/button semantics.

## SEO

Every indexable route gets unique title/description, canonical URL, Open Graph metadata, semantic H1, and clean links. Generate sitemap/robots. Prevent staging indexing. Business JSON-LD must use true centralized data only.

## Social card

Generate `SM-SOC-01` from canonical identity + approved photo + Manrope + canonical palette. Do not use earlier generated social-card experiments.

## Performance

Aim for LCP ≤2.5s, INP ≤200ms, CLS ≤0.1 under representative conditions. Public pages should remain mostly server/static rendered with restrained JavaScript.

## Security/privacy

Use suitable CSP/HSTS/etc. for deployed stack. Validate all server input. Never render submitted content as trusted HTML. Public content and private request data remain separate. No private upload URLs, public caches, analytics leakage, or exposed secrets.

## Build validation

Automate checks for unique IDs/routes, valid relationships, missing assets, broken internal links, required business data, invalid context IDs, accidental design-reference imports, missing social metadata, image dimensions, accessibility linting, and unresolved required launch configuration.

## Core tests

Navigation, all five request contexts, preselection/fallback, validation, duplicate protection, storage-before-success, private payload boundaries, phone/email fallback, canonical Business consistency, ServiceLine/Scope relationships, SEO metadata, sitemap/noindex, and basic accessibility.

## Release gate

Launch only when identity, architecture, visual system, secure Request Work, private uploads, accessibility fundamentals, SEO/canonicals, performance, and privacy boundaries have passed qualification.

## Launch blockers

- canonical asset ingestion
- exact contact data
- service taxonomy
- responsive behavior
- secure Request Work submission
- private uploads
- accessibility fundamentals
- metadata/canonical URLs
- factual structured data
- privacy page aligned with implementation

Configuration blockers only where referenced in public copy: exact geography, insurance wording, regulatory/service boundaries, legal entity, business hours.

Not launch blockers: Project Records, review library, FAQ, customer portal, online scheduling, accounts, city landing pages, CRM integration, advanced analytics.

## Build sequence

1. Foundation
2. Identity & assets
3. Global shell
4. Content model
5. Home
6. Services + Service Line routes
7. About
8. Request Work frontend
9. Request Work backend
10. SEO / structured data / social asset
11. Accessibility & performance qualification
12. Production deployment and release validation

## Governing implementation sentence

> Build the smallest truthful system that expresses the full SteadyMark architecture, and make later evidence capable of deepening the site without forcing the architecture to be rewritten.
