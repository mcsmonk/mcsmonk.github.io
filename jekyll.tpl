{% extends 'markdown.tpl' %}

{%- block header -%}
---
title:  "{{resources['metadata']['name']}}"
#excerpt: "{{resources['metadata']['name']}}"

categories:
  - notebook
tags:
  - notebook
  
last_modified_at: 202X-xx-xxT18:30:00

published: true

#toc: true
#toc_sticky: true
#toc_label: "On this page"
---
{%- endblock header -%}

{% block in_prompt %}
<div class="prompt input_prompt">
In&nbsp;[{{ cell.execution_count }}]:
</div>
{% endblock in_prompt %}

{% block input %}
<div class="input_area" markdown="1">
{{ super() }}
</div>
{% endblock input %}

{% block stream %}
{:.output_stream}

```
{{ output.text }}
```
{% endblock stream %}

{% block data_text %}
{:.output_data_text}

```
{{ output.data['text/plain'] }}
```
{% endblock data_text %}

{% block traceback_line  %}
{:.output_traceback_line}

`{{ line | strip_ansi }}`

{% endblock traceback_line  %}

{% block data_html %}
<div markdown="0">
{{ output.data['text/html'] }}
</div>
{% endblock data_html %}

