# SteadyMark Responsive, Accessibility & Performance Contract v1.0

## Governing rule

> The site must remain understandable, usable, fast, and structurally coherent regardless of viewport, input method, motion preference, network quality, or assistive technology.

## Responsive philosophy

Semantic structure first, responsive relationship rules second, composition at each range third. Mobile is not a smaller desktop page.

Suggested implementation ranges:

- `<640px` compact/mobile
- `640–899px` large mobile / small tablet
- `900–1199px` tablet / compact desktop
- `1200px+` full desktop

Breakpoints occur when a relationship stops working, not because a named device exists.

## DOM/source order

DOM order must follow logical reading order. Desktop visual alternation may not create semantically reversed content.

## Header/navigation

Desktop: wordmark, Services, About, Request Work. Mobile: wordmark + accessible menu control. Menu must expose expanded state, work by keyboard, support Escape, and restore focus appropriately.

## Responsive imagery

Each significant asset should support focal point, desktop crop, mobile crop/focal adjustment, intrinsic dimensions, and alt guidance. Do not universally center-crop.

## Typography and spacing

Use fluid heading scaling selectively. Body remains at least 16 px. Large desktop spacing may contract on mobile, but conceptual separation must survive.

## Service/Scope reflow

Representative Scope on mobile should usually become Condition → Typical Scope → Next Step. Service pages preserve semantic sequence even when image/text positions change.

## Request Work at small widths

Must function at approximately 320 CSS px with one primary column, no horizontal scrolling, large tap targets, camera/photo-picker support, persistent labels, and no sticky controls obstructing software keyboards.

## Accessibility target

Target **WCAG 2.2 AA**.

Use semantic landmarks, one clear H1, logical heading hierarchy, skip link, keyboard operation, native controls, visible focus, color-independent state, sufficient contrast, 200% zoom tolerance, touch targets, descriptive links, contextual alt text, persistent form labels, associated error messages, reduced-motion handling, and no artificial time limits.

## Form accessibility

Errors should explain what went wrong and how to correct it. Multiple failures may use a concise linked error summary while retaining inline errors. Required state must be conveyed programmatically and textually.

## Performance architecture

Preferred architecture:

**static/server-rendered public pages + limited client enhancement + secure server-side request handling**

Target representative field performance:

- LCP ≤ 2.5 s
- INP ≤ 200 ms
- CLS ≤ 0.1

Initial JavaScript should remain restrained; public informational pages should require little client-side JS.

## Images/fonts

Use appropriate AVIF/WebP derivatives, srcset, explicit dimensions, priority only for genuine above-fold media, lazy loading below fold, and limited Manrope weights with readable fallback behavior.

## Third-party scripts

Every script must justify a specific user or operational objective. Analytics, maps, CAPTCHA, scheduling, social embeds, chat, and review widgets are not automatically approved.

## Progressive enhancement

Business identity, service understanding, contact information, and navigation must remain accessible if nonessential JavaScript fails.

## Failure resilience

If Request Work cannot submit, expose canonical phone/email. Public errors may not expose stack traces, environment names, API keys, storage paths, provider payloads, or other internals.

## Caching/security headers

Use hashed long-lived public assets where appropriate. Never public-cache private request/upload content. Configure appropriate production headers such as CSP, HSTS, X-Content-Type-Options, Referrer-Policy, and framing controls consistent with the deployed stack.

## Validation matrix

Manually test small/standard/large phones, tablet portrait/landscape, compact laptop, and wide desktop; current Safari/iOS Safari, Chrome, Firefox, and Edge; mouse, touch, keyboard-only, representative screen reader, software keyboard open, portrait/landscape rotation, long content, 200% zoom, reduced motion, slow CPU/network, upload failure, and submission failure.

## Anti-patterns

Do not solve responsive problems by shrinking text below readability, hiding important content, horizontal carousels for primary service information, absolute-positioning core text, duplicate mobile/desktop page architectures, or user-agent-specific rendering.

Do not introduce autoplay hero video, parallax libraries, carousel frameworks, generic animation libraries, client-rendered static content, multiple analytics products, social feeds, live chat, or full-resolution masters.
