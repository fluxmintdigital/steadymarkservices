# SteadyMark Asset & Photography Architecture v1.0

## Governing rule

> An image must retain its identity, provenance, purpose, and evidentiary standing even when its crop, format, placement, or prominence changes.

## Asset classes

1. **Identity Master** — canonical brand artwork
2. **Production Media** — approved site imagery
3. **Design Reference** — composition/direction only; never direct production import
4. **Documentary Evidence** — future real imagery tied to a SteadyMark Project Record

## Canonical identity family

- SM-ID-01 Primary horizontal wordmark
- SM-ID-02 Stacked/narrow wordmark
- SM-ID-03 Registration mark
- SM-ID-04 Graphite monochrome
- SM-ID-05 White monochrome
- SM-ID-06 Favicon/app-mark family

Source master hierarchy: **Master SVG → delivery derivatives → implementation use**. Never redraw or recreate the wordmark with Manrope.

## Canonical large-format photography

- SM-HERO-01 Home hero / residential property context
- SM-SVC-01 Make-Readies & Turns
- SM-SVC-02 Maintenance & Property Support
- SM-SVC-03 Repairs & Punch Work
- SM-SVC-04 Recurring & Contract Support
- SM-PROP-01 Multi-property context

## Supporting detail library

- SM-MAT-01 Doors & hardware
- SM-MAT-02 Walls / trim / finish
- SM-MAT-03 Cabinet / fixture
- SM-MAT-04 Flooring / transition
- SM-MAT-05 Working materials

## Robert imagery

Original references remain source/reference material. Approved derivatives may support About/accountability but are not documentary records of specific jobs. Future high-quality real working photography should become preferred.

## Provenance values

- `real`
- `reference-derived`
- `synthetic-representative`
- `design-reference`
- `documentary-project` (future specific-job evidence)

## Evidentiary standing

Separate from provenance:

- `representative`
- `supported`
- `documented`

## Required asset metadata

- id
- source_file/path
- asset_class
- provenance
- evidence_state
- role
- related_objects
- publication_status
- focal_point
- aspect_preferences
- alt_guidance
- replacement_priority
- rights_notes
- created_from/lineage

## Repository separation

Production brand/media, design references, future documentary media, and private customer uploads must remain physically/logically separate.

## Filenames

Human-readable, role-oriented, lowercase, hyphenated. Avoid SEO stuffing. Source masters are preserved; optimization creates derivatives rather than destructively overwriting originals.

## Crop architecture

Use focal-point metadata and intentional crop families. Mobile may use a different crop where necessary. Never stretch or blindly center-crop subjects.

## Alt text

Alt behavior belongs to placement context. Describe semantic meaning that would otherwise be lost; do not repeat adjacent copy or keyword-stuff.

## Social asset

`SM-SOC-01` is derived during production from canonical SVG identity, approved photo, canonical colors, and Manrope. Earlier generated social-card experiments are reference-only.

## Design references

Approved homepage, mobile, About, Service Line, Representative Scope, identity, and responsive specimens govern composition/tone only. They do not authorize embedded rendered copy, generated navigation, malformed logos, or specimen slogans.

## Replacement lifecycle

Synthetic representative imagery should be replaceable by stronger real SteadyMark photography without changing semantic asset role or page architecture. Preserve historical source/lineage where useful.

## Future field photography

Capture grammar:

**Context → Condition → Work → Result**

A useful Project Record may need only a small number of strong images. Quality and evidence coverage matter more than volume.

## Privacy/permissions

Before publishing real job photography, review for faces, mail, documents, plates, codes, lockboxes, screens, resident information, and embedded geolocation metadata. The existence of an image does not imply permission to publish it.

## Project Record integrity

A Project Record may use only actual documentary material to substantiate specific historical claims. Never label generated approximations as “Before.” Before/after pairs must depict the actual property/scope.

## Asset states

Useful internal states:

- source
- approved
- published
- superseded
- retired
- reference-only

Supersession is generally preferable to deletion.
