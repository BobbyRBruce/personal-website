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
Links to related materials (PDFs, slides, videos, source code, etc.) are provided where possible.

{% assign publications = site.data.publications | sort: "year" | reverse %}
{% for pub in publications %}
## {{ pub.title }}

**Type**: {{ pub.type }}  
**Year**: {{ pub.year }}  
**Authors**: {{ pub.authors | join: ", " }}  
**Venue**: {{ pub.venue }} {% if pub.doi %}  
**DOI**: [{{ pub.doi }}](https://doi.org/{{ pub.doi }}){% endif %} {% if pub.artifact_doi %}  
**Artifact DOI**: [{{ pub.artifact_doi }}](https://doi.org/{{ pub.artifact_doi }}){% endif %}{% if pub.publication_url %}  
**Publication**: [Link]({{ pub.publication_url }}){% endif %}{% if pub.research_note %}  
**Original Research Note**: [{{ pub.research_note.label }}]({{ pub.research_note.url }}){% endif %}{% assign has_resources = false %}{% if pub.pdf_url or pub.video_url or pub.slides %}{% assign has_resources = true %}{% endif %}{% if has_resources %}  
**Full Paper**:
{% if pub.pdf_url %}[PDF]({{ pub.pdf_url }}){% endif %}{% if pub.slides %}  
**Presentation Slides**:{% for slide in pub.slides %}{% if forloop.index0 > 0 %}, {% endif %}[{{ slide.label }}]({{ slide.url }}){% endfor %}{% endif %}{% if pub.video_url %}  
**Presentation Recording**:
[Video]({{ pub.video_url }}){% endif %}
{% endif %}  
{% endfor %}
