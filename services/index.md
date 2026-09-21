---
title: What SteadyMark Helps With
description: Explore SteadyMark service lines for make-readies, maintenance support, repairs, punch work, and recurring property needs.
permalink: /services/
---
<section class="page-hero"><div class="wrap narrow"><span class="eyebrow">Services</span><h1>What SteadyMark Helps With</h1><p class="lede">Recognize the property situation first. The service line helps organize the request; it does not replace a scope review.</p></div></section>
<section class="section section-surface"><div class="wrap"><div class="service-list">{% for service in site.data.service_lines %}{% include service-card.html service=service %}{% endfor %}</div></div></section>
<section class="section"><div class="wrap"><div class="section-intro"><span class="eyebrow">Representative scopes</span><h2>Concrete ways a need may show up.</h2><p>These are recognition tools, not project records or claims about completed work.</p></div><div class="scope-grid">{% for scope in site.data.scopes %}{% include scope.html scope=scope %}{% endfor %}</div></div></section>
<section class="section section-stone"><div class="wrap split"><div><span class="eyebrow">Fit & boundaries</span><h2>Start with the condition, then clarify the authority it needs.</h2></div><div class="body-copy"><p>SteadyMark considers ordinary property support, defined repairs, and coordinated scopes. Requests that require regulated trade authority, permits, specialty contractors, or other confirmed boundaries are reviewed for fit rather than implied by imagery or a service label.</p></div></div></section>
{% include cta.html heading="Have a property need in mind?" %}
