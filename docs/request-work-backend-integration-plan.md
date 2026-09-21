# Request Work backend integration plan

Status: planned, not implemented. The current email-based form is a temporary degraded preview/testing fallback only. It does not satisfy the canonical Request Work contract and must not be described as authoritative submission or persistence.

## Boundary

GitHub Pages remains the public Jekyll host. The future backend should be a small separate server-side endpoint at an unresolved origin, called by the Request Work form with a same-site or explicitly allowed cross-origin policy. No provider is selected by this plan.

The smallest useful addition is one intake endpoint, private durable request persistence, private attachment storage, independent notification delivery, and deterministic validation, duplicate protection, and failure states. No CRM, account system, online scheduling, AI classification, CAPTCHA, or public request dashboard is required for the first implementation.

## Request lifecycle

1. The browser submits a whitelisted context, contact fields, property context, description, desired timing, portfolio context where relevant, attachment metadata/content, CSRF/origin signal, honeypot, and an idempotency key.
2. The endpoint applies request-size, field-length, encoding, context, email/phone, attachment type, attachment count, and attachment-byte-limit validation. Unknown context values fail safely to `unsure` or are rejected according to the final API decision; they must never select an arbitrary workflow.
3. The endpoint creates a server-generated request ID and timestamp. Client-provided IDs, filenames, timestamps, and state are not authoritative.
4. The request record and private attachments are persisted transactionally or with an explicit compensating state. Storage keys are opaque, non-executable, and not derived from user filenames. Private objects are never placed under public Jekyll assets or public cache paths.
5. The endpoint returns success only after authoritative persistence succeeds. The browser may then redirect to `/request-work/received/` with no request payload in the URL.
6. Notification is attempted after persistence and is tracked independently. A notification failure does not delete or invalidate the stored request.

## Minimal data model

`WorkRequest` should contain server request ID, creation timestamp, state, whitelisted context and origin route, name, phone, email, preferred contact method, property location/context, occupancy where useful, portfolio/count context where relevant, description, desired timing, attachment records, idempotency key/fingerprint, notification state, and audit timestamps.

Attachment records should contain only opaque storage key, validated media type, byte size, checksum, and upload state. Do not store analytics identifiers, raw request payloads in URLs, or untrusted HTML. Keep request data separate from the public build.

## Idempotency and abuse controls

- Require a server-validated idempotency key for each submission attempt.
- Store the key with a request fingerprint and bounded expiry. A retry with the same key and matching fingerprint returns the original result without creating a duplicate.
- A reused key with a different fingerprint fails deterministically.
- Add honeypot, origin/CSRF protection appropriate to the deployment, per-IP and per-contact rate limits, body-size limits, field sanity limits, and structured server logging without request-content leakage.
- Do not add CAPTCHA unless abuse evidence justifies it.

## Attachment handling

Validate type from content and server-side inspection, not only the browser `accept` attribute. Apply configured count and byte limits. Rename to non-guessable storage keys, strip unsafe metadata where appropriate, reject executable/archive formats, and scan or quarantine according to the selected infrastructure. Private download access should be short-lived and authenticated to the internal operator workflow; there should be no public attachment URL.

## Failure contract

Use stable public error categories without exposing provider details: `400` invalid/incomplete request, `403` failed origin/CSRF or honeypot policy, `409` idempotency conflict, `413` request or attachment too large, `429` rate limited, and `503` persistence or notification dependency unavailable.

If persistence fails, the browser must not redirect to “received.” Show a concise retry message plus the canonical phone and email fallback. If persistence succeeds but notification fails, show “request received for review” while the backend retains the request and marks notification for retry/operations review. Never claim that a request was booked, accepted, quoted, or scheduled.

## Analytics boundary

Aggregate events may record request start, context selection, submit attempt, success, and failure category. Never transmit names, contact information, property details, descriptions, attachment names, file contents, request IDs, idempotency keys, or free-text values to analytics. Do not put context payloads or request IDs in query strings on success or failure routes.

## Delivery sequence

1. Confirm hosting/runtime, private storage, notification, retention, attachment, rate-limit, and origin policy configuration in `_data/request_backend.yml`.
2. Define and test the endpoint schema and stable error contract.
3. Implement server-side validation and idempotent persistence behind a non-production endpoint.
4. Add private attachment handling and verify no public/static cache exposure.
5. Add independent notification with retry/observability behavior.
6. Replace the form’s email action with the endpoint while retaining phone/email fallback for failures.
7. Update the Privacy page from actual implementation facts.
8. Add integration tests for validation, every context, duplicate protection, storage-before-success, notification independence, private payload boundaries, and deterministic fallback.
9. Remove the degraded-fallback launch notice only after the endpoint passes release qualification.

## Release gate

The secure backend remains a launch blocker until authoritative persistence, private attachments, idempotency, independent notification, analytics boundaries, and deterministic fallback behavior are verified in the production-like environment.
