# SteadyMark Request Work & Interaction Contract v1.0

## Governing rule

> The intake should help SteadyMark understand the property need without forcing the customer to diagnose the work first.

The form is a scope-intake instrument, not a scheduling wizard, quote calculator, or generic contact form.

## Entry choices

- Repair or smaller job
- Make-ready / unit turn
- Multi-item / punch scope
- Recurring / multi-property support
- Not sure

Context from a Service Line or Representative Scope may preselect a choice, but the visitor may always change it.

## Preferred interaction flow

**Choose context → Describe the property need → Add relevant property details → Add contact information → Optional files → Review → Submit**

The visitor’s own description remains central.

## Common fields

Required unless future operational policy changes:

- Name
- Phone
- Email
- Preferred contact method
- Property location or service area
- Description of need
- Desired timing
- Request context

Photos/files are optional.

## Repair / smaller job

Ask what needs attention, where the property is, desired timing, and optional photos. Do not require trade classification.

## Make-ready / unit turn

May ask property/unit location, vacant/occupied state, what needs attention, existing punch list/scope document, desired ready date, and optional files. “Desired ready date” is not a promised completion date.

## Multi-item / punch scope

Support pasted lists, plain language, PDFs, and multiple photos. Do not require one field per punch item.

## Recurring / multi-property support

Ask property/portfolio context, approximate count where relevant, geography, recurring needs, what support is missing, and desired timeframe for beginning the conversation. Do not create package tiers.

## Not sure

First-class path. Explain that the visitor may simply describe what is happening at the property without knowing which service category it belongs to.

## Contact timing

Do not begin with Name / Email / Phone before the visitor has described why they are there. Contact information follows property-need context.

## Preferred contact

Initial options:

- Call
- Text
- Email

No marketing consent is bundled into this choice.

## Timing

Separate desired timing from scheduling. Suggested options may include:

- As soon as practical
- Within a few days
- Within 1–2 weeks
- Flexible / planning ahead
- Specific target date

No booking calendar in V1 unless a real scheduling system later exists.

## Attachments

Photos and PDFs/common image-document formats may be accepted, subject to explicit implementation limits. Uploads must remain private, use non-guessable references, be server-validated, and never live in public static directories.

Sensitive-information warning:

> Please don't include alarm codes, lockbox codes, keys/access credentials, payment information, or sensitive tenant information in this initial request.

## Validation philosophy

Validation should assist rather than punish. Preserve valid entered content after recoverable errors. Client-side validation improves UX; server-side validation is authoritative. Require only fields SteadyMark actually needs.

## Review and submit

A lightweight review may show request type, property, description, desired timing, contact preference, and attachment count.

Submit label should be **Send Work Request** or **Submit Work Request**. Avoid Book Now, Schedule Service, Get My Quote, or Reserve Appointment.

## Submission semantics

Successful authoritative persistence creates a WorkRequest with state **Received**. It does not create a job, estimate, appointment, contract, invoice, or promise of service.

Redirect to `/request-work/received/` only after authoritative storage succeeds.

## Failure states

Distinguish field validation error, attachment failure, submission/network failure, and server rejection. Preserve entered information where practical and always expose canonical phone/email fallback on full submission failure.

## Duplicate protection

Use deterministic safeguards such as loading/submit lock and server-side idempotency where practical. A double tap should not create two active requests.

## Spam protection

Prefer server-side rate limiting, honeypots, sanity checks, CSRF/origin protection, and provider controls. Do not add visible CAPTCHA until real abuse requires it. No AI spam classifier by default.

## Analytics boundary

Allowed event families include request start, request type selected, submission, and failure. Analytics must never receive names, phone numbers, emails, exact addresses, descriptions, filenames, attachment content, tenant information, or form payloads.

## Public/private boundary

**Website → Validated WorkRequest → Private operational destination**

Public content and private request data are separate systems.

## Storage and notification

Saving the WorkRequest and notifying SteadyMark are distinct operations. Notification failure must not lose a successfully stored request. Never show “Request received” if storage failed.

## Mobile

Mobile is first-class: one primary column, touch-friendly controls, proper keyboards, camera/photo picker support, clear upload state, no horizontal scrolling, persistent labels, and no sticky elements that obstruct the software keyboard.

## Accessibility

Use programmatic labels, associated error messages, keyboard-accessible branch controls, meaningful required-state communication, and sensible focus after validation/submission events.

## Context passing

Whitelisted internal parameters such as `?service=make-readies-turns` and `?scope=multi-item-punch-scope` may preselect context. Unknown values fall back safely. Never render arbitrary query-string content unsanitized.

## Direct contact

Phone link: `tel:+12107104309`.

The site must not automatically launch calls/messages/email clients without explicit user action.

## Restraint

Do not add gamification, chat-style fake conversations, animated celebration, decorative badges, unnecessary multi-step transitions, or AI assistants. The form itself is the product on this page.
