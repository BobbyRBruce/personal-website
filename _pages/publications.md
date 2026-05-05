---
layout: single
title: Publications
permalink: /publications/
---

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "CollectionPage",
  "name": "Publications",
  "url": "{{ '/publications/' | absolute_url }}",
  "mainEntity": {
    "@type": "ItemList",
    "itemListElement": [
      {% assign publications = site.data.publications | sort: "year" | reverse %}
      {% for pub in publications %}
      {
        "@type": "ListItem",
        "position": {{ forloop.index }},
        "item": {
          "@type": {% if pub.type == "Conference paper" or pub.type == "Workshop paper" or pub.type == "Demo paper" or pub.type == "Journal article" or pub.type == "Newsletter article" %}"ScholarlyArticle"{% elsif pub.type == "Doctoral thesis" %}"Thesis"{% else %}"CreativeWork"{% endif %},
          "headline": {{ pub.title | jsonify }},
          "name": {{ pub.title | jsonify }},
          "author": [
            {% for author in pub.authors %}
            {
              "@type": "Person",
              "name": {{ author | jsonify }}{% if author == "Bobby R. Bruce" %},
              "url": {{ '/' | absolute_url | jsonify }}{% endif %}
            }{% unless forloop.last %},{% endunless %}
            {% endfor %}
          ],
          "datePublished": "{{ pub.year }}",
          "isPartOf": {
            "@type": {% if pub.type == "Workshop presentation" or pub.type == "Workshop paper" or pub.type == "Workshop report" %}"Event"{% else %}"CreativeWork"{% endif %},
            "name": {{ pub.venue | jsonify }}
          }{% if pub.doi or pub.artifact_doi or pub.publication_url or pub.pdf_url or pub.video_url or pub.research_note or pub.slides %},{% endif %}
          {% if pub.doi or pub.artifact_doi %}
          "identifier": [
            {% assign has_prior_identifier = false %}
            {% if pub.doi %}
            {
              "@type": "PropertyValue",
              "propertyID": "DOI",
              "value": {{ pub.doi | jsonify }}
            }{% assign has_prior_identifier = true %}{% endif %}
            {% if pub.artifact_doi %}{% if has_prior_identifier %},{% endif %}
            {
              "@type": "PropertyValue",
              "propertyID": "Artifact DOI",
              "value": {{ pub.artifact_doi | jsonify }}
            }
            {% endif %}
          ]{% if pub.publication_url or pub.pdf_url or pub.video_url or pub.research_note or pub.slides %},{% endif %}
          {% endif %}
          {% if pub.publication_url %}
          "sameAs": {{ pub.publication_url | jsonify }}{% if pub.pdf_url or pub.video_url or pub.research_note or pub.slides %},{% endif %}
          {% elsif pub.doi %}
          "sameAs": {{ "https://doi.org/" | append: pub.doi | jsonify }}{% if pub.pdf_url or pub.video_url or pub.research_note or pub.slides %},{% endif %}
          {% endif %}
          {% if pub.pdf_url %}
          "url": {{ pub.pdf_url | absolute_url | jsonify }}{% if pub.video_url or pub.research_note or pub.slides %},{% endif %}
          {% endif %}
          {% if pub.video_url %}
          "subjectOf": [
            {
              "@type": "VideoObject",
              "name": {{ pub.title | append: " presentation video" | jsonify }},
              "url": {{ pub.video_url | jsonify }}
            }{% if pub.research_note or pub.slides %},{% endif %}
            {% if pub.research_note %}
            {
              "@type": "CreativeWork",
              "name": {{ pub.research_note.label | jsonify }},
              "url": {{ pub.research_note.url | absolute_url | jsonify }}
            }{% if pub.slides %},{% endif %}
            {% endif %}
            {% if pub.slides %}
              {% for slide in pub.slides %}
            {
              "@type": "PresentationDigitalDocument",
              "name": {{ slide.label | append: " slides for " | append: pub.title | jsonify }},
              "url": {{ slide.url | absolute_url | jsonify }}
            }{% unless forloop.last %},{% endunless %}
              {% endfor %}
            {% endif %}
          ]
          {% elsif pub.research_note or pub.slides %}
          "subjectOf": [
            {% if pub.research_note %}
            {
              "@type": "CreativeWork",
              "name": {{ pub.research_note.label | jsonify }},
              "url": {{ pub.research_note.url | absolute_url | jsonify }}
            }{% if pub.slides %},{% endif %}
            {% endif %}
            {% if pub.slides %}
              {% for slide in pub.slides %}
            {
              "@type": "PresentationDigitalDocument",
              "name": {{ slide.label | append: " slides for " | append: pub.title | jsonify }},
              "url": {{ slide.url | absolute_url | jsonify }}
            }{% unless forloop.last %},{% endunless %}
              {% endfor %}
            {% endif %}
          ]
          {% endif %}
        }
      }{% unless forloop.last %},{% endunless %}
      {% endfor %}
    ]
  }
}
</script>

This page functions as an archive of my published works. It also contains entries for presentations given at workshops and conferences.
Links to related materials such as papers, slides, videos, and original research notes are provided where possible.

{% assign publications = site.data.publications | sort: "year" | reverse %}
<div class="publications-list" role="list">
{% for pub in publications %}
  <article class="publication-entry" role="listitem" aria-labelledby="publication-{{ forloop.index }}">
    <h2 id="publication-{{ forloop.index }}">{{ pub.title }}</h2>
    <dl class="publication-entry__meta">
      <dd><i>{{ pub.type }}</i></dd>

      <dt>Year</dt>
      <dd>{{ pub.year }}</dd>

      <dt>Authors</dt>
      <dd>{{ pub.authors | join: ", " }}</dd>

      <dt>Publication Venue</dt>
      <dd>{{ pub.venue }}</dd>

      {% if pub.doi %}
      <dt>DOI</dt>
      <dd><a href="https://doi.org/{{ pub.doi }}">[Link] '{{ pub.title }}' DOI - {{ pub.doi }}</a></dd>
      {% endif %}

      {% if pub.artifact_doi %}
      <dt>Artifact DOI</dt>
      <dd><a href="https://doi.org/{{ pub.artifact_doi }}">[Link] '{{ pub.title }}' Artifact DOI - {{ pub.artifact_doi }}</a></dd>
      {% endif %}

      {% if pub.publication_url %}
      <dt>Publication Page</dt>
      <dd><a href="{{ pub.publication_url }}">[Link] '{{ pub.title }}' Publication Page</a></dd>
      {% endif %}

      {% if pub.research_note %}
      <dt>Research Note</dt>
      <dd><a href="{{ pub.research_note.url }}">[PDF] '{{ pub.title }}' Research Note -- {{ pub.research_note.label }}</a></dd>
      {% endif %}

      {% if pub.pdf_url %}
      <dt>Full Paper</dt>
      <dd><a href="{{ pub.pdf_url }}">[PDF] '{{ pub.title }}' Full Paper</a></dd>
      {% endif %}

      {% if pub.slides %}
      <dt>Presentation Slides</dt>
      <dd>
        <ul class="publication-entry__resources">
        {% for slide in pub.slides %}
          <li><a href="{{ slide.url }}">[{{ slide.label }}] '{{ pub.title }}' Presentation Slides </a></li>
        {% endfor %}
        </ul>
      </dd>
      {% endif %}

      {% if pub.video_url %}
      <dt>Presentation Recording</dt>
      <dd><a href="{{ pub.video_url }}">[Link] '{{ pub.title }}' Presentation Recording</a></dd>
      {% endif %}
    </dl>
  </article>
{% endfor %}
</div>
